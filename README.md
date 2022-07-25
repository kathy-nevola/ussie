
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ussie

<!-- badges: start -->

[![R-CMD-check](https://github.com/kathy-nevola/ussie/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/kathy-nevola/ussie/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of ussie is to clean and analyze data from the engsoccerdata
package (Curley 2016). This is a demo package that was made as part of
the 2022 RStudio Conference, during the Building Tidy Tools workshop.

## Installation

You can install the development version of ussie from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("kathy-nevola/ussie")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ussie)
library(engsoccerdata)
#> Warning: package 'engsoccerdata' was built under R version 4.2.1
england<-uss_make_matches(engsoccerdata::england, "England")
head(england)
#> # A tibble: 6 × 8
#>   country tier  season date       home            visitor        goals…¹ goals…²
#>   <chr>   <fct>  <int> <date>     <chr>           <chr>            <int>   <int>
#> 1 England 1       1888 1888-12-15 Accrington F.C. Aston Villa          1       1
#> 2 England 1       1888 1889-01-19 Accrington F.C. Blackburn Rov…       0       2
#> 3 England 1       1888 1889-03-23 Accrington F.C. Bolton Wander…       2       3
#> 4 England 1       1888 1888-12-01 Accrington F.C. Burnley              5       1
#> 5 England 1       1888 1888-10-13 Accrington F.C. Derby County         6       2
#> 6 England 1       1888 1888-12-29 Accrington F.C. Everton              3       1
#> # … with abbreviated variable names ¹​goals_home, ²​goals_visitor
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
