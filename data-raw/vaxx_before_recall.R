
vaxx_before_recall <- vaxx_counties %>%
  filter(administered_date < '2021-09-14')

usethis::use_data(vaxx_before_recall, overwrite = TRUE)

