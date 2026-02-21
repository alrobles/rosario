# Assemblage-wide temporal niche segregation

Assemblage-wide temporal niche segregation

## Usage

``` r
temp_overlap(mat, method = c("pianka", "czekanowski"))
```

## Arguments

- mat:

  A matrix with species per time columns.

- method:

  A measure of temporal niche overlap between pairs of species

## Value

The mean temporal overlaping index from a pairwise distance matrix

## Examples

``` r
temp_overlap(ex1, method = "pianka")
#>    pianka 
#> 0.9975192 
ex1_rescale <- rescale_matrix(ex1)
temp_overlap(ex1_rescale, method = "czekanowski")
#> czekanowski 
#>       0.953 
```
