# Pairwise temporal niche-overlap matrix

Computes all pairwise overlaps among rows (biological identities) using
the chosen index.

## Usage

``` r
temp_overlap_matrix(mat, method = c("pianka", "czekanowski"))
```

## Arguments

- mat:

  Numeric matrix (rows = biological identities, columns = ordered time
  intervals).

- method:

  Overlap index to use: `"pianka"` or `"czekanowski"`.

## Value

A square symmetric matrix of overlap values with row/colnames copied
from `mat`. The first class of the object is set to the method name.

## Details

For Czekanowski, supply a **row-rescaled** matrix (see
[`rescale_matrix()`](https://alrobles.github.io/rosario/reference/rescale_matrix.md))
or use
[`temp_overlap()`](https://alrobles.github.io/rosario/reference/temp_overlap.md),
which handles rescaling.

## See also

[`temp_overlap()`](https://alrobles.github.io/rosario/reference/temp_overlap.md),
[`rescale_matrix()`](https://alrobles.github.io/rosario/reference/rescale_matrix.md)

## Examples

``` r
temp_overlap_matrix(ex1, method = "pianka")
#>           spp1      spp2      spp3      spp4      spp5
#> spp1 0.0000000 0.9961896 0.9983251 0.9983618 0.9971781
#> spp2 0.9961896 0.0000000 0.9989437 0.9972414 0.9929789
#> spp3 0.9983251 0.9989437 0.0000000 0.9995934 0.9973623
#> spp4 0.9983618 0.9972414 0.9995934 0.0000000 0.9990181
#> spp5 0.9971781 0.9929789 0.9973623 0.9990181 0.0000000
#> attr(,"class")
#> [1] "pianka" "matrix" "array" 
ex1_rescale <- rescale_matrix(ex1)
temp_overlap_matrix(ex1_rescale, method = "czekanowski")
#>      spp1 spp2 spp3 spp4 spp5
#> spp1 0.00 0.94 0.96 0.95 0.94
#> spp2 0.94 0.00 0.97 0.95 0.92
#> spp3 0.96 0.97 0.00 0.98 0.95
#> spp4 0.95 0.95 0.98 0.00 0.97
#> spp5 0.94 0.92 0.95 0.97 0.00
#> attr(,"class")
#> [1] "czekanowski" "matrix"      "array"      
```
