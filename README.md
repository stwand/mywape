
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mywape

<!-- badges: start -->
<!-- badges: end -->

Additional metric for the package **yardstick**
<https://CRAN.R-project.org/package=yardstick> and
<https://yardstick.tidymodels.org>

WAPE - Weighted Average Percentage Error.

$$WAPE= \frac{\sum_{i=1}^{n}|Y-\hat Y|}{\sum_{i=1}^{n}|Y|}$$

## Installation

You can install the development version of mywape from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("stwand/mywape")
```

## Example 1

This is an example of how to use the metric yourself:

``` r
library(dplyr)
library(mywape)
library(yardstick)
# Data preparation
data("two_class_example",package = "yardstick")
set.seed(1234)
size <- 100
times <- 10
solubility_resampled <- bind_rows(
  replicate(
    n = times,
    expr = sample_n(solubility_test, size, replace = TRUE),
    simplify = FALSE
  ),
  .id = "resample"
)
# test
solubility_resampled |>
  group_by(resample) |>
  wape(solubility, prediction)
```

# Example 2

Along with other metrics:

``` r
multi_metric <- metric_set(mape,mae,msd,rmse,wape)
solubility_resampled |>
  group_by(resample) |>
  multi_metric(solubility, prediction)
```
