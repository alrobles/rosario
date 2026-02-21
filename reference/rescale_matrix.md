# Row-wise rescaling of a matrix to relative frequencies

Divides each row by its row sum so that every row sums to 1 (leaving
dimnames intact).

## Usage

``` r
rescale_matrix(m)
```

## Arguments

- m:

  Numeric matrix; rows are biological identities, columns are time bins
  (i.e., time resources).

## Value

A numeric matrix of the same dimension with each row summing to 1. Rows
with a zero sum are left unchanged (resulting in `NaN` if present).

## Examples

``` r
ex1_rescale <- rescale_matrix(ex1)
rowSums(ex1_rescale)
#> spp1 spp2 spp3 spp4 spp5 
#>    1    1    1    1    1 
```
