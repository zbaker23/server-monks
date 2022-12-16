## code to prepare `ballot_question` dataset goes here



yes <- data.frame(Column1 = ballot_measures$yes[c(TRUE, FALSE)],
                  Column2 = ballot_measures$yes[c(FALSE, TRUE)])



no <- data.frame(Column1 = ballot_measures$no[c(TRUE, FALSE)],
                 Column2 = ballot_measures$no[c(FALSE, TRUE)])


x1 <- data.frame(Column1 = ballot_measures$x1[c(TRUE, FALSE)],
                 Column2 = ballot_measures$x1[c(FALSE, TRUE)])

ballot_question <-cbind(x1, yes, no)

names(ballot_question) <- c('County', 'Percent', 'Yes_num', 'Yes_per', 'No_num', 'No_per')

ballot_question <- subset(ballot_question, select=-c(Percent))

usethis::use_data(ballot_question, overwrite = TRUE)
