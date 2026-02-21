# Generate cyclic and mirrored permutations of a time series

For a numeric vector, creates the set of cyclic shifts and their mirror
images (reverse order), preserving shape but changing location along the
cycle. The suite of vectors and mirrors represent a complete set of
possible distributions.

## Usage

``` r
rosario(numvec)
```

## Arguments

- numvec:

  Numeric vector representing a single biological identity'
  distributions across ordered time intervals. Time intervals are
  assumed to be circular (e.g., hours of the day, months of the year),
  so the last interval is treated as adjacent to the first. Biological
  identities can be individuals, populations, species or communities.

## Value

A list of numeric vectors with all the permutations in the time series,
including the mirror patterns.

## See also

[`vec_permutation()`](https://alrobles.github.io/rosario/reference/vec_permutation.md),
[`rosario_sample()`](https://alrobles.github.io/rosario/reference/rosario_sample.md)

## Examples

``` r
rosario(c(40, 25, 18, 10, 5, 2))
#> [[1]]
#>  [1] 40 25 18 10  5  2  2  5 10 18 25 40
#> 
#> [[2]]
#>  [1]  2 40 25 18 10  5  5 10 18 25 40  2
#> 
#> [[3]]
#>  [1]  5  2 40 25 18 10 10 18 25 40  2  5
#> 
#> [[4]]
#>  [1] 10  5  2 40 25 18 18 25 40  2  5 10
#> 
#> [[5]]
#>  [1] 18 10  5  2 40 25 25 40  2  5 10 18
#> 
#> [[6]]
#>  [1] 25 18 10  5  2 40 40  2  5 10 18 25
#> 
```
