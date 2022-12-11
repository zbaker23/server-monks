#' California county vaccination data from after the September 14, 2021 recall election
#'
#' A subset of data from the California Department of Health ...
#'
#' @format ## `vaxx_before_recall`
#' A data frame with 25,730 entries and 20 columns:
#' \describe{
#'   \item{county}{country name}
#'   \item{administered_date}{the YYYY-MM-DD format date when the vaccine was administered}
#'   \item{total_doses}{total doses for a date}
#'   \item{cumulative_total_doses}{cumulative total vaccines over time}
#'   \item{pfizer_doses}{doses of Pfizer vaccine for a date}
#'   \item{cumulative_pfizer_doses}{cumulative total Pfizer vaccines over time}
#'   \item{moderna_doses}{doses of Moderna vaccine for a date}
#'   \item{cumulative_moderna_doses}{cumulative total Moderna vaccines over time}
#'   \item{jj_doses}{doses of Johnson&Johnson vaccine for a date}
#'   \item{cumulative_jj_doses}{cumulative total Johnson&Johnson vaccines over time}
#'   \item{partially_vaccinated}{partially vaccinated individuals for a date}
#'   \item{total_partially_vaccinated}{total partially vaccinated individuals over time}
#'   \item{fully_vaccinated}{fully vaccinated individuals for a date}
#'   \item{cumulative_fully_vaccinated}{cumulative fully vaccinated individuals over time}
#'   \item{at_least_one_dose}{individuals with at least one dose for a date}
#'   \item{cumulative_at_least_one_dose}{individuals with at least one dose over time}
#'   \item{california_flag}{flag of California}
#'   \item{booster_recip_count}{individuals who have received a booster vaccine at a moment in}
#'   \item{cumulative_booster_recip_count}{individuals who have received a booster vaccine over time}
#'   \item{booster_eligible_population}{individuals who are eligible for a booster vaccine}
#
#'   ...
#' }
#'
#' @source <https://data.chhs.ca.gov/dataset/e283ee5a-cf18-4f20-a92c-ee94a2866ccd/resource/130d7ba2-b6eb-438d-a412-741bde207e1c/download/covid19vaccinesbycounty.csv>
"vaxx_counties"
