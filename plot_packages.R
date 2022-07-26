# R file
library(tidyverse)
library(ggplot2)
mypackages <- installed.packages() %>%
  as_tibble

freqtable <- mypackages %>%
  count(Built) %>%
  rename(packagecount = n)

freqtable %>%
  ggplot(
    aes(x = Built, y = packagecount)
  ) + geom_bar(stat = "identity")
