#'
#' Quickly summarize how a county of your choice compares to most extreme California counties in terms of vaccination rates and support for the 2021 recall of Gov. Gavin Newsom.
#'
#' @param yourcounty A string.
#' @returns A string.
#' @examples
#' quick_summary_vaxx_vs_recall("Los Angeles")
#' quick_summary_vaxx_vs_recall("Orange")
#' quick_summary_vaxx_vs_recall("San Mateo")
#' @export
quick_summary_vaxx_vs_recall <- function(yourcounty) {

  most_support_recall <- ballot_question %>%
    arrange(desc(Yes_per)) %>%
    head(1)

  most_support_recall <- as.character(most_support_recall["County"])

  current_date <- vaxx_counties %>%
    filter(administered_date == "2022-11-14")

  least_vaxxed <- vaxx_counties %>%
    filter(administered_date == "2022-11-14") %>%
    mutate(pervaxxed = cumulative_booster_recip_count/booster_eligible_population) %>%
    arrange(pervaxxed) %>%
    head(1)

  least_vaxxed <- as.character(least_vaxxed["county"])

  least_support_recall <- ballot_question %>%
    arrange(Yes_per) %>%
    head(1)

  least_support_recall <- as.character(least_support_recall["County"])

  most_vaxxed <- vaxx_counties %>%
    filter(administered_date == "2022-11-14") %>%
    mutate(pervaxxed = cumulative_booster_recip_count/booster_eligible_population) %>%
    arrange(desc(pervaxxed)) %>%
    head(1)

  most_vaxxed <- most_vaxxed["county"]

  most_vaxxed<- as.character(most_vaxxed)

  highest_vaxx_rate <- vaxx_counties %>%
    filter(administered_date == "2022-11-14") %>%
    mutate(pervaxxed = (cumulative_booster_recip_count/booster_eligible_population)*100) %>%
    arrange(desc(pervaxxed)) %>%
    head(1) %>%
    mutate(reformat_pervaxxed = substring(as.character(pervaxxed), 1, 5))

  highest_vaxx_percent <- as.character(highest_vaxx_rate["reformat_pervaxxed"])

  lowest_vaxx_rate <- vaxx_counties %>%
    filter(administered_date == "2022-11-14") %>%
    mutate(pervaxxed = (cumulative_booster_recip_count/booster_eligible_population)*100) %>%
    arrange(pervaxxed) %>%
    head(1) %>%
    mutate(reformat_pervaxxed = substring(as.character(pervaxxed), 1, 5))

  lowest_vaxx_percent <- as.character(lowest_vaxx_rate["reformat_pervaxxed"])

  highest_recall_notsupport <- ballot_question %>%
    arrange(desc(Yes_per)) %>%
    head(1) %>%
    mutate(highest_pernotsupport = as.character(No_per *100))

  highest_recall_notsupport_percent <- as.character(highest_recall_notsupport["highest_pernotsupport"])

  lowest_recall_notsupport <- ballot_question %>%
    arrange(Yes_per) %>%
    head(1) %>%
    mutate(lowest_pernotsupport = as.character(No_per *100))

  lowest_recall_notsupport_percent <- as.character(lowest_recall_notsupport["lowest_pernotsupport"])

  yourcounty_vaxx_rate <- vaxx_counties %>%
    filter(administered_date == "2022-11-14") %>%
    filter(county == yourcounty) %>%
    mutate(pervaxxed = (cumulative_booster_recip_count/booster_eligible_population)*100) %>%
    mutate(reformat_pervaxxed = substring(as.character(pervaxxed), 1, 5))

  reformat_pervaxxed <- as.character(yourcounty_vaxx_rate["reformat_pervaxxed"])

  yourcounty_recall_notsupport <- ballot_question %>%
    filter(County == yourcounty) %>%
    mutate(reformat_pernotsupport = as.character(No_per *100))

  yourcounty_recall_notsupport <- as.character(yourcounty_recall_notsupport["reformat_pernotsupport"])

  paste(most_support_recall, "County had the highest share of voters supporting Gov. Gavin Newsom's recall of all California counties, with", lowest_recall_notsupport_percent, "percent of voters supporting the recall.", least_support_recall, "County had the lowest share of voters supporting Gov. Gavin Newsom's recall of all California counties, with", highest_recall_notsupport_percent, "of voters voting for the recall. As of November 14, 2022,", least_vaxxed, "County has the lowest share of residents fully vaccinated of all California counties, with", lowest_vaxx_percent, "of residents fully vaccinated.", most_vaxxed, "County is the most fully vaccinated county in California, with", highest_vaxx_percent, "of residents fully vaccinated.", "In comparison,", yourcounty, "County has a full vaccination rate of", reformat_pervaxxed, "percent and", yourcounty_recall_notsupport, "percent of voters voted against Gavin Newsom's recall.") }

