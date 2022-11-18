
<!-- README.md is generated from README.Rmd. Please edit that file -->

# servermonks

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/servermonks)](https://CRAN.R-project.org/package=servermonks)
<!-- badges: end -->

## Purpose

The goal of servermonks is to compare COVID-19 data for California and
Massachusetts. In addition, this package will empower users to evaluate
how different counties across CA are covered by vaccinations in light of
how the majority voted on the recall election for governor of California

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
#>   ✔  checking for file ‘/private/var/folders/bg/sw1rtkpd2gn7092rp9k766840000gn/T/RtmpiK9Rd1/remotes53e2633774ba/zbaker23-server-monks-bec0f62/DESCRIPTION’
#>   ─  preparing ‘servermonks’:
#>    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
#>   ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>   ─  building ‘servermonks_0.0.0.9000.tar.gz’
#>      
#> 
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(servermonks)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

## test code to make sure push works

``` r
testing <- c("testing", "testing", "one", "two", "three")
testing
#> [1] "testing" "testing" "one"     "two"     "three"
```

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
