# Pianka's niche-overlap index

Computes Pianka's symmetric index of overlap between two non-negative
activity profiles \\p\\ and \\q\\: \$\$\frac{\sum_i p_i
q_i}{\sqrt{\left(\sum_i p_i^2\right)\left(\sum_i q_i^2\right)}}.\$\$

## Usage

``` r
pianka_index(p, q)
```

## Arguments

- p:

  Numeric vector of non-negative values (counts or relative frequencies)
  for the first biological identity data 1 (e.g. activity, population
  size, etc) across ordered time bins.

- q:

  Numeric vector of non-negative values (same length as `p`) for the
  second biological identity (e.g. activity, population size, etc)
  across ordered time bins.

## Value

A single numeric value in \[0, 1\]; larger values indicate greater
overlap.

## Details

Pianka's index does not require inputs to sum to 1, but both vectors
must be non-negative and not all zero.

## Examples

``` r
set.seed(1)
n <- 10
p <- rpois(n, 3); q <- rpois(n, 3)
pianka_index(p, q)
#> [1] 0.828351
```
