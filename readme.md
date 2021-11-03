The site is generated using R and RMarkdown. To render, you will require the `rmarkdown` package. To process the scripts in `scripts/` you will require the `tidyr` package. If you open the `RDM-Webpage.Rproj` file in RStudio, you should have everything you need available. In the `build` option, you should be able to build the site after making any edits.

* Website is served from `docs/`
* `files/` contains csv and xlsx files used by the scripts to generate page content and urls.
  * `learn.csv` has links and descriptions for on line learning resources
  * `self-guided-categories.csv` has the 'buckets', descriptions and urls for bucket landing pages
  * `pages.xlxs` contains the individual pages with descriptions, urls and associated buckets in wide format - this is the same as `pages-wide.csv`
  * `pages.csv` is the long, 'tidy' version of `pages-wide.csv`. This conversion is handled by the script `gather.R` in `scripts/`
* `scripts/` contains one file for moving wide to long data - see above.
* `saved-content` is from several iterations ago and can likely be deleted shortly (comment made 20211101)
* files preceded with a

  * `s` refer to site structure pages and should generally match the menu structure
  * `c` refer to a 'bucket' page and should generally match each bucket listed on the 'get help' page
  * `p` refer to a content page
* `styles.css` holds custom styling
* `_output.yml` holds build specific content

## Creating New Pages

### Structure pages

Content pending.

### Buckets

Content pending.

### Content pages

#### Create the `Rmd` file

In the root folder, create a new `.Rmd` document, using the file naming convention `p_` + `file-name`

Populate this new file with the following YAML

```
---
title: "Your Title Here"
---
```

You can add more markdown if you want, but it's not strictly necessary.

#### Update the Records

In `files/` open `pages-wide.csv` and add you page title to the `page` column, a definition to the `definition` column, and the stem of a url to the `url` column (the `.html` file extension is not needed, this is added when the url is generated in the `bucket` pages). Populate any relevant bucker columns with buckets that this page should be associated. Save and exit the `csv`.

In `sripts/` run `gather.R`. This will convert the wide data to long data which is what is used to build the `bucket` pages.

#### Build the page

Simply build the site; your new page will be added to any `bucket` pages you associated it with and an `html` file of your `Rmd` will be generated.
