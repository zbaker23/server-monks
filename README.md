
<!-- README.md is generated from README.Rmd. Please edit that file -->

# servermonks

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/servermonks)](https://CRAN.R-project.org/package=servermonks)
[![R-CMD-check](https://github.com/zbaker23/server-monks/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/zbaker23/server-monks/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

## Purpose

The goal of servermonks is to compare COVID-19 vaccination data for
California with the results, by county, of the 2021 CA Gubernatorial
Recall Election. In [a CNN
article](https://www.cnn.com/2021/08/28/politics/california-recall-what-matters/index.html)
analyzing the context behind the recall election, Ethan Cohen (Reston
and CNN) is quoted saying that:

“\[Although political groups in CA launched efforts to oust Gov. Newsom
before the pandemic, the\]quest to collect enough signature petitions to
force a recall election took off late last year amid anger about
Newsom’s Covid-19 stay-at-home orders and other restrictions. And while
the governor appeared to be in a strong position to withstand the effort
for much of this year, the resurgence of the pandemic \[with the delta
variant\] and frustration with the state’s wildfire, drought and
homelessness crises has injected an unexpected level of volatility into
the race in an overwhelmingly blue state.”

The functions and tidy datasets included in this package will thus
empower users to ask questions about the different ways in which
counties in California have responded to the pandemic.

## Target audiences:

Public and private entities who are interested in looking at a
relationship, if any, between trends in the polarized political races we
saw during the course of the pandemic

## Installation

You can install the development version of servermonks from Github with
the following code:

``` r
# install.packages("devtools")
devtools::install_github("zbaker23/server-monks")
#> Downloading GitHub repo zbaker23/server-monks@HEAD
#> vctrs   (0.5.0 -> 0.5.1) [CRAN]
#> isoband (0.2.5 -> 0.2.6) [CRAN]
#> Installing 2 packages: vctrs, isoband
#> Installing packages into 'C:/Users/jandr/AppData/Local/R/win-library/4.2'
#> (as 'lib' is unspecified)
#> package 'vctrs' successfully unpacked and MD5 sums checked
#> Warning: cannot remove prior installation of package 'vctrs'
#> Warning in file.copy(savedcopy, lib, recursive = TRUE): problem copying C:
#> \Users\jandr\AppData\Local\R\win-library\4.2\00LOCK\vctrs\libs\x64\vctrs.dll
#> to C:\Users\jandr\AppData\Local\R\win-library\4.2\vctrs\libs\x64\vctrs.dll:
#> Permission denied
#> Warning: restored 'vctrs'
#> package 'isoband' successfully unpacked and MD5 sums checked
#> 
#> The downloaded binary packages are in
#>  C:\Users\jandr\AppData\Local\Temp\RtmpwfAMQa\downloaded_packages
#>          checking for file 'C:\Users\jandr\AppData\Local\Temp\RtmpwfAMQa\remotes52457d74494\zbaker23-server-monks-9311d69/DESCRIPTION' ...  ✔  checking for file 'C:\Users\jandr\AppData\Local\Temp\RtmpwfAMQa\remotes52457d74494\zbaker23-server-monks-9311d69/DESCRIPTION' (490ms)
#>       ─  preparing 'servermonks': (941ms)
#>    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   ✔  checking DESCRIPTION meta-information
#>       ─  excluding invalid files
#>    Subdirectory 'R' contains invalid file names:
#>      'functionwork.Rmd' 'functionwork.html'
#>       ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>       ─  building 'servermonks_0.0.0.9000.tar.gz'
#>      
#> 
#> Installing package into 'C:/Users/jandr/AppData/Local/R/win-library/4.2'
#> (as 'lib' is unspecified)
```

## Example

This is a basic example which shows you how to use the print() base R
function within our servermonks package to visualize the ballot_question
dataset. For the ballot measure question of, “Shall Gavin Newsom Be
Recalled (Removed) From the Office of Governor?” for the 2021 CA
Gubernational Recall Election, this dataset details the number of “yes”
votes, the number of “no” votes, the percentage of the votes that are
“yes”, and the percentage of the votes that are “no” by county.

``` r

library(servermonks)
#> Loading required package: ggplot2
#> Warning: package 'ggplot2' was built under R version 4.2.2

print(ballot_question)
#> # A tibble: 59 × 5
#>    county       yes_num no_num yes_per no_per
#>    <chr>          <dbl>  <dbl>   <dbl>  <dbl>
#>  1 Alameda       108081 465901   0.188  0.812
#>  2 Alpine           225    354   0.389  0.611
#>  3 Amador         12895   6957   0.65   0.35 
#>  4 Butte          43129  36128   0.544  0.456
#>  5 Calaveras      15133   8320   0.645  0.355
#>  6 Colusa          4037   2027   0.666  0.334
#>  7 Contra Costa  130058 324747   0.286  0.714
#>  8 Del Norte       5243   3505   0.599  0.401
#>  9 El Dorado      58393  39907   0.594  0.406
#> 10 Fresno        133309 126488   0.513  0.487
#> # … with 49 more rows
```

## Group assignment

For Project Phase III, we want to continue working with the servermonks
package to include further functions that will help users summarize and
then view the built-in datasets for our package in different ways. The
current function in our package, quick_summary_vaxx_vs_recall(), lets a
user quickly look statistics on vaccine rates and support for the 2021
recall election in a county of their choice, and compare them to the
California counties with the most extreme statistics for vaccination
rates and recall support. We plan to write a function that creates
visualizations allowing users to easily compare counties to each other,
rather than only returning descriptive text.

\`\`\`
