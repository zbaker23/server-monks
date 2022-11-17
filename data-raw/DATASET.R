## code to prepare `DATASET` dataset goes here

library(tidyverse)
library(janitor)
vaxx_counties <- read_csv("data-raw/covid19vaccinesbycounty.csv") %>%
  clean_names()
usethis::use_data(vaxx_counties, overwrite = TRUE)
