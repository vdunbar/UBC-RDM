library(tidyr)
library(here)

pages <- read.csv("files/pages-wide.csv", header = T, na.strings = c("", " ", "."))

pages.wide <- gather(pages, "bucket", "category", 4:ncol(pages))

pages.wide.nona <- subset(pages.wide, category != "NA", c(1:3, 5))

write.csv(pages.wide.nona, "files/pages.csv", row.names = F)
