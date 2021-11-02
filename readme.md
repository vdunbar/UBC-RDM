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

  
