## code to prepare `ballot_measures` dataset goes here

library(tidyverse)
library(janitor)
library(readxl)
X16_question <- read_xlsx("data-raw/16-question.xlsx") %>%
  clean_names()
usethis::use_data(X16_question, overwrite = TRUE)
