# Plot null-model results for temporal niche overlap

Creates a histogram of simulated mean niche overlap values from a null
model (see
[`get_null_model()`](https://alrobles.github.io/rosario/reference/get_null_model.md))
and overlays a dashed vertical line indicating the observed mean
overlap.

## Usage

``` r
temp_overlap_plot(results)
```

## Arguments

- results:

  A list object returned by
  [`get_null_model()`](https://alrobles.github.io/rosario/reference/get_null_model.md),
  containing `null_niche_overlap` (data frame of simulated overlaps) and
  `observed_niche_overlap` (numeric observed value).

## Value

A `ggplot2` object displaying the null distribution of overlap values
with the observed overlap marked.

## See also

[`get_null_model()`](https://alrobles.github.io/rosario/reference/get_null_model.md),
[`temp_overlap()`](https://alrobles.github.io/rosario/reference/temp_overlap.md)

## Examples

``` r
mod <- get_null_model(ex1, method = "pianka", nsim = 100)
temp_overlap_plot(mod)
#> `stat_bin()` using `bins = 30`. Pick better value `binwidth`.

```
