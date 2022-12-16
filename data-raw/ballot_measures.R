## code to prepare `ballot_measures` dataset goes here



library(tidyverse)
library(janitor)
library(readxl)
ballot_measures <- read_excel("data-raw/16-question.xlsx",
                              col_types = c("text", "numeric", "numeric")) %>%
  clean_names()

ballot_measures <- na.omit(ballot_measures)
usethis::use_data(ballot_measures, overwrite = TRUE)
