# Convert a square overlap matrix to a tidy pairwise data frame

Tidies a symmetric overlap (or distance) matrix into a three-column
tibble/data frame with pairs and values.

## Usage

``` r
temp_overlap_df(mat)
```

## Arguments

- mat:

  Square numeric matrix (typically from
  [`temp_overlap_matrix()`](https://alrobles.github.io/rosario/reference/temp_overlap_matrix.md)).

## Value

A data frame with columns `item1`, `item2`, and `distance` (terminology
follows [`stats::as.dist()`](https://rdrr.io/r/stats/dist.html)).

## Examples

``` r
d <- temp_overlap_matrix(ex1)
temp_overlap_df(d)
#> # A tibble: 10 × 3
#>    item1 item2 distance
#>    <fct> <fct>    <dbl>
#>  1 spp1  spp2     0.996
#>  2 spp1  spp3     0.998
#>  3 spp1  spp4     0.998
#>  4 spp1  spp5     0.997
#>  5 spp2  spp3     0.999
#>  6 spp2  spp4     0.997
#>  7 spp2  spp5     0.993
#>  8 spp3  spp4     1.000
#>  9 spp3  spp5     0.997
#> 10 spp4  spp5     0.999
```
