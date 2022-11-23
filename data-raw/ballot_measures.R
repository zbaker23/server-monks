## code to prepare `ballot_measures` dataset goes here

library(tidyverse)
library(janitor)
library(readxl)
ballot_measures <- read_xlsx("data-raw/16-question.xlsx") %>%
  clean_names()
usethis::use_data(ballot_measures, overwrite = TRUE)
