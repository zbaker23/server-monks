---
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

"$$Although political groups in CA launched efforts to oust Gov. Newsom
before the pandemic, the$$quest to collect enough signature petitions to
force a recall election took off late last year amid anger about
Newsom's Covid-19 stay-at-home orders and other restrictions. And while
the governor appeared to be in a strong position to withstand the effort
for much of this year, the resurgence of the pandemic $$with the delta
variant$$ and frustration with the state's wildfire, drought and
homelessness crises has injected an unexpected level of volatility into
the race in an overwhelmingly blue state."

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
devtools::install_github("zbaker23/server-monks")
```

## Example

This is a basic example which shows you how to use the print() base R
function within our servermonks package to visualize the ballot_question
dataset. For the ballot measure question of, "Shall Gavin Newsom Be
Recalled (Removed) From the Office of Governor?" for the 2021 CA
Gubernational Recall Election, this dataset details the number of "yes"
votes, the number of "no" votes, the percentage of the votes that are
"yes", and the percentage of the votes that are "no" by county.

``` r

library(servermonks)

print(ballot_question)
#>             County Yes_num Yes_per  No_num No_per
#> 1          Alameda  108081    18.8  465901   81.2
#> 2           Alpine     225    38.9     354   61.1
#> 3           Amador   12895    65.0    6957   35.0
#> 4            Butte   43129    54.4   36128   45.6
#> 5        Calaveras   15133    64.5    8320   35.5
#> 6           Colusa    4037    66.6    2027   33.4
#> 7     Contra Costa  130058    28.6  324747   71.4
#> 8        Del Norte    5243    59.9    3505   40.1
#> 9        El Dorado   58393    59.4   39907   40.6
#> 10          Fresno  133309    51.3  126488   48.7
#> 11           Glenn    6331    71.8    2485   28.2
#> 12        Humboldt   18621    36.0   33164   64.0
#> 13        Imperial   13177    40.6   19288   59.4
#> 14            Inyo    4134    54.1    3502   45.9
#> 15            Kern  131061    61.8   81030   38.2
#> 16           Kings   19710    63.7   11242   36.3
#> 17            Lake   10923    49.0   11367   51.0
#> 18          Lassen    8538    84.2    1604   15.8
#> 19     Los Angeles  855940    29.2 2077859   70.8
#> 20          Madera   25638    61.2   16233   38.8
#> 21           Marin   24273    18.3  108599   81.7
#> 22        Mariposa    5378    61.4    3376   38.6
#> 23       Mendocino   12075    35.3   22093   64.7
#> 24          Merced   30210    52.0   27867   48.0
#> 25           Modoc    2593    78.0     730   22.0
#> 26            Mono    2245    44.5    2805   55.5
#> 27        Monterey   38169    32.1   80664   67.9
#> 28            Napa   18681    32.4   38948   67.6
#> 29          Nevada   25426    46.0   29851   54.0
#> 30          Orange  547685    48.3  586457   51.7
#> 31          Placer  115411    57.4   85677   42.6
#> 32          Plumas    5842    63.2    3408   36.8
#> 33       Riverside  362958    50.5  355630   49.5
#> 34      Sacramento  220498    40.1  329952   59.9
#> 35      San Benito    9276    42.2   12718   57.8
#> 36  San Bernardino  286364    49.8  288877   50.2
#> 37       San Diego  505081    42.8  674670   57.2
#> 38   San Francisco   47193    13.9  292744   86.1
#> 39     San Joaquin   94877    47.4  105405   52.6
#> 40 San Luis Obispo   61203    47.2   68429   52.8
#> 41       San Mateo   64390    22.1  227368   77.9
#> 42   Santa Barbara   58149    38.2   94219   61.8
#> 43     Santa Clara  166995    26.3  468851   73.7
#> 44      Santa Cruz   25454    21.9   90874   78.1
#> 45          Shasta   51608    69.6   22592   30.4
#> 46          Sierra    1065    63.4     616   36.6
#> 47        Siskiyou   11295    61.9    6961   38.1
#> 48          Solano   58372    37.3   97935   62.7
#> 49          Sonoma   57419    26.3  160602   73.7
#> 50      Stanislaus   82911    54.5   69247   45.5
#> 51          Sutter   20458    63.8   11593   36.2
#> 52          Tehama   16770    72.4    6386   27.6
#> 53         Trinity    2699    56.2    2106   43.8
#> 54          Tulare   64372    61.1   41009   38.9
#> 55        Tuolumne   15832    61.6    9850   38.4
#> 56         Ventura  136610    42.8  182470   57.2
#> 57            Yolo   24769    32.1   52444   67.9
#> 58            Yuba   15291    65.8    7961   34.2
#> 59    State Totals 4894473    38.1 7944092   61.9
```

## Additional notes

For a more in-depth overview of the \`servermonks\` package, please
refer to the servermonks vignette. For questions related to using the
function \`quick_summary_vaxx_vs_recall()\`, please refer to the
tutorial found in the \`functionwork.Rmd\` file.

\`\`\`
