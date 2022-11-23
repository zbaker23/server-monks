library(readxl)
library(janitor)
ballot_question <- read_excel("data/ballot_question.xlsx")%>%
  clean_names()

usethis::use_data(ballot_question, overwrite = TRUE)

