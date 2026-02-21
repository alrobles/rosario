# ROSARIO randomization of an assemblage matrix

Randomly permutes each row by a uniform cyclic shift of its columns and,
with probability 0.5, reverses the order (mirror image). This kind of
permutations preserves each biological identity's temporal
autocorrelation structure and niche breadth while randomizing location
within the cycle.

## Usage

``` r
rosario_sample(mat)
```

## Arguments

- mat:

  Numeric matrix with biological identities in rows and ordered time
  intervals in columns.

## Value

A numeric matrix of the same dimension as `mat`, randomized row-wise.

## See also

[`rosario()`](https://alrobles.github.io/rosario/reference/rosario.md),
[`vec_permutation()`](https://alrobles.github.io/rosario/reference/vec_permutation.md)

## Examples

``` r
rosario_sample(ex1)
#>      INT1 INT2 INT3 INT4 INT5 INT6 INT7 INT8 INT9 INT10 INT11 INT12
#> [1,]    0    0    0    0    0    0    0    0    0    13    75    12
#> [2,]    0    0    0    0    0    0    0   15   78     7     0     0
#> [3,]    0    9   79   12    0    0    0    0    0     0     0     0
#> [4,]    0    0    0    0   10   80   10    0    0     0     0     0
#> [5,]    0    0    7   81   12    0    0    0    0     0     0     0
```
