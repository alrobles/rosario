# Cyclic permutation (rotate) a numeric vector

Returns a cyclic shift of `numvec` so that position `x` becomes the
first element and the order wraps around the end.

## Usage

``` r
vec_permutation(numvec, x = 1)
```

## Arguments

- numvec:

  Numeric vector representing an ordered cycle.

- x:

  Integer (1-based) index of the new starting position.

## Value

A numeric vector of the same length as `numvec`, rotated so that
`numvec[x]` is first.

## Examples

``` r
vec_permutation(1:6, 4)  # 4 5 6 1 2 3
#> [1] 4 5 6 1 2 3
```
