
<!-- README.md is generated from README.Rmd. Please edit that file -->

# convertmetrics

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

- volumes (liters and gallons, abbreviated as l and gal)

- distances (miles and kilometers, meters and yards, inches and
  centimeters, abbreviated as mi, km, m, yrd, in, and cm)

- temperatures (Fahrenheit and Celsius, abbreviated as f and c)

- weights (pounds and kilograms, kilograms and catty, kilograms and
  tael, abbreviated as lbs and kg - use the whole name for catty and
  tael)

## Installation

You can install the development version of convertmetrics from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("ElinorSterner/convertmetrics")
```

## Usage

This is a basic example which shows you how to solve a common problem:

``` r
library(convertmetrics)

volume(c(4, 7, 22), "gal", "l")
#> [1] 15.14 26.50 83.28

weight(c(78, 34, 99), "g", "tael")
#> [1] 3900 1700 4950

weight(c(78, 34, 99), "lbs", "kg")
#> [1] 35.41 15.44 44.95

distance(c(26.2, 13.1, 89, 7, 3), "mi", "km")
#> [1]  42.16  21.08 143.23  11.27   4.83

temp(c(63, 62, 70, 65, 64), "f", "c")
#> [1] 17.22 16.67 21.11 18.33 17.78
```
