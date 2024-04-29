
<!-- README.md is generated from README.Rmd. Please edit that file -->

# convertmetrics()

<!-- badges: start -->
<!-- badges: end -->

## Overview

The goal of convertmetrics is to convert between measurement systems. It
works will multiple systems of measurement, including the metric system,
imperial system (i.e. US and UK measurements) and some weights used in
the Chinese measurement system, catty and tael. For all supported units,
the package converts treats the metric system as the base unit, and all
conversions are to or from a metric unit.

Overall, this package supports the following units and pairs of units:

- volumes (liters and gallons)

- distances (miles and kilometers, meters and yards, inches and
  centimeters)

- temperatures (Fahrenheit and Celsius)

- weights (pounds and kilograms, kilograms and catty, kilograms and
  tael)

## Installation

You can install the development version of convertmetrics from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("ElinorSterner/convertmetrics")
```

And install the final version of the package from CRAN with:

``` r
install.packages("convertmetrics")
#> Installing package into '/private/var/folders/pj/_h64zn_j63n7jhztw7cmngnm0000gn/T/RtmpThBDhR/temp_libpath13f2c43dbf84f'
#> (as 'lib' is unspecified)
#> Warning: package 'convertmetrics' is not available for this version of R
#> 
#> A version of this package for your version of R might be available elsewhere,
#> see the ideas at
#> https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages
```

## Usage

This is a basic example which shows you how to solve a common problem:

``` r
library(convertmetrics)

volume(c(4, 7, 22), "gal", "lit")
#> [1] 15.14164 26.49787 83.27902

weight(c(78, 34, 99), "g", "tael")
#> [1] 3900 1700 4950

weight(c(78, 34, 99), "lbs", "kilograms")
#> [1] 35.412 15.436 44.946

distance(c(26.2, 13.1, 89, 7, 3), "miles", "kilometers")
#> [1]  42.164813  21.082406 143.231616  11.265408   4.828032

temp(c(63, 62, 70, 65, 64), "f", "c")
```
