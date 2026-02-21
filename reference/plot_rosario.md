# Diagram of ROSARIO null-model randomizations

Visualizes the first 10 hypothetical time use distributions produced by
[`rosario()`](https://alrobles.github.io/rosario/reference/rosario.md)
for a single biological identity. Each panel displays one hypothetical
time use distribution with its cyclic shift shown in dark gray and its
mirror image shown in dark red.

## Usage

``` r
plot_rosario(numvec, normalize = TRUE, cols = 4)
```

## Arguments

- numvec:

  Numeric vector representing a single biological identity' distribution
  across ordered time intervals.

- normalize:

  Logical; if TRUE (default) scale each half to sum to 1 (compare
  shapes, not totals).

- cols:

  Integer; number of panels (hypothetical distributions) per row.

## Value

Invisibly, a list with:

- `variants` — the original list from `rosario(numvec)`

- `mat2k_plotted` — matrix of the plotted variants (min(10, n) × 2k)

- `k` — number of time bins

- `indices_plotted` — which variant indices (1..m) were drawn

## Examples

``` r
one <- c(0,5,0,7,5,13,70,0)
plot_rosario(one, cols = 4)

```
