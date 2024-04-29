
<!-- README.md is generated from README.Rmd. Please edit that file -->

# convertmetrics()

<!-- badges: start -->

[![R-CMD-check](https://github.com/ElinorSterner/metrics_group_2/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ElinorSterner/metrics_group_2/actions/workflows/R-CMD-check.yaml)
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
#> Installing package into '/private/var/folders/sf/dh0vgcxd1_v5lyg_4rt532wh0000gp/T/Rtmp0E9N1Q/temp_libpath1680f770e5039'
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

volume(c(4, 7, 22), "gallons", "liters")
#> [1] 15.14 26.50 83.28

weight(c(78, 34, 99), "grams", "tael")
#> [1] 3900 1700 4950

weight(c(78, 34, 99), "pounds", "kilograms")
#> [1] 35.41 15.44 44.95

distance(c(26.2, 13.1, 89, 7, 3), "miles", "kilometers")
#> [1]  42.16  21.08 143.23  11.27   4.83

temp(c(63, 62, 70, 65, 64), "fahrenheit", "celsius")
#> [1] 17.22 16.67 21.11 18.33 17.78
```
