## code to prepare `ballot_question` dataset goes here

library(tidyverse)
library(janitor)
library(readxl)
ballot_question <- read_excel("data/ballot_question.xlsx") %>%
  clean_names()
usethis::use_data(ballot_question, overwrite = TRUE)
