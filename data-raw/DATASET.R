## code to prepare `DATASET` dataset goes here

library(tidyverse)
vaxx_counties <- read_csv("data-raw/covid19vaccinesbycounty.csv")
usethis::use_data(DATASET, overwrite = TRUE)
