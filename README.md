
<!-- README.md is generated from README.Rmd. Please edit that file -->

# vicbabynames

<!-- badges: start -->
<!-- badges: end -->

This is a wrapper to the Victorian Government Popular Baby Names API.
See <https://wovg-community.portal.prod.api.vic.gov.au/api-catalogue>

This is just a test, but the package works.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("williamlai2/vicbabynames")
```

## Example

If you don’t have an API Key, you can get one for free from
<https://wovg-community.portal.prod.api.vic.gov.au/>

``` r
library(vicbabynames)
#> Warning: replacing previous import 'assertthat::has_name' by 'tibble::has_name'
#> when loading 'vicbabynames'
#> API key loaded!

# set your api key - this is just the sample available from the Vic Gov website.
#set_api_key()
```

It is probably better to `get_all_data()` then filter using `dplyr`
later.

``` r
get_all_data()
#> # A tibble: 100 x 5
#>    position name      count sex     year
#>       <int> <chr>     <int> <chr>  <int>
#>  1        1 Oliver      546 MALE    2020
#>  2        1 Charlotte   413 FEMALE  2020
#>  3        1 Oliver      537 MALE    2019
#>  4        1 Olivia      419 FEMALE  2019
#>  5        1 Oliver      507 MALE    2018
#>  6        1 Olivia      374 FEMALE  2018
#>  7        1 Oliver      509 MALE    2017
#>  8        1 Charlotte   426 FEMALE  2017
#>  9        1 Oliver      516 MALE    2016
#> 10        1 Charlotte   453 FEMALE  2016
#> # ... with 90 more rows
```

But you can filter by a year if you want. Data is available from 2008
onwards.

``` r
get_year_data(2008)
#> # A tibble: 100 x 5
#>    position name      count sex     year
#>       <int> <chr>     <int> <chr>  <int>
#>  1        1 William     574 MALE    2008
#>  2        1 Mia         489 FEMALE  2008
#>  3        2 Jack        544 MALE    2008
#>  4        2 Olivia      451 FEMALE  2008
#>  5        3 Thomas      522 MALE    2008
#>  6        3 Chloe       448 FEMALE  2008
#>  7        4 Joshua      475 MALE    2008
#>  8        4 Isabella    422 FEMALE  2008
#>  9        5 James       466 MALE    2008
#> 10        5 Charlotte   414 FEMALE  2008
#> # ... with 90 more rows
```

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN
