# Null-model test via ROSARIO algorithm randomization

Generates a null distribution of concurrent temporal niche overlap by
repeatedly randomizing the input matrix with
[`rosario_sample()`](https://alrobles.github.io/rosario/reference/rosario_sample.md)
and recomputing the mean pairwise overlap (see
[`temp_overlap()`](https://alrobles.github.io/rosario/reference/temp_overlap.md)).

## Usage

``` r
get_null_model(mat, method, nsim = 100, parallel = FALSE)
```

## Arguments

- mat:

  Numeric matrix (rows = biological identities, columns = ordered time
  intervals). Time intervals are assumed to be circular (e.g., hours of
  the day, months of the year), so the last interval is treated as
  adjacent to the first. Biological identities can be individuals,
  populations, species or communities.

- method:

  Character string naming the overlap index to use: `"pianka"` or
  `"czekanowski"`.

- nsim:

  Integer number of randomizations to run (default `100`).

- parallel:

  Logical. If `TRUE`, randomizations are executed in parallel using
  [`furrr::future_map_dfr()`](https://furrr.futureverse.org/reference/future_map.html)
  with a `multisession` plan set internally.

## Value

A list with components:

- observed_niche_overlap:

  Mean from all possible pairwise comparisons among biological
  identities for `mat`.

- p_value:

  A one-sample `t.test` object comparing null means to the observed
  value (mu = observed).

- null_niche_overlap:

  A tibble/data.frame of simulated mean overlaps (one per
  randomization).

## Details

For `"czekanowski"`, rows are rescaled to proportions internally to
satisfy the index's assumptions. Randomization preserves each row's
temporal autocorrelation by cyclically shifting (and optionally
mirroring) its profile; see
[`rosario_sample()`](https://alrobles.github.io/rosario/reference/rosario_sample.md).

When `parallel = TRUE`, the function calls `future::plan(multisession)`
internally so that randomizations are distributed across available local
sessions. This means the function overrides any previously set `future`
plan. If you need custom control over parallelization (e.g. cluster
backends), run the non-parallel mode (`parallel = FALSE`) and handle
parallelism externally.

## See also

[`temp_overlap()`](https://alrobles.github.io/rosario/reference/temp_overlap.md),
[`rosario_sample()`](https://alrobles.github.io/rosario/reference/rosario_sample.md),
[`temp_overlap_matrix()`](https://alrobles.github.io/rosario/reference/temp_overlap_matrix.md)

## Examples

``` r
get_null_model(ex1, method = "pianka", nsim = 10, parallel = FALSE)
#> $observed_niche_overlap
#>    pianka 
#> 0.9975192 
#> 
#> $p_value
#> 
#>  One Sample t-test
#> 
#> data:  res[[1]]
#> t = -46.004, df = 9, p-value = 5.422e-12
#> alternative hypothesis: true mean is not equal to 0.9975192
#> 95 percent confidence interval:
#>  0.1004131 0.1845053
#> sample estimates:
#> mean of x 
#> 0.1424592 
#> 
#> 
#> $null_niche_overlap
#> # A tibble: 10 × 1
#>    pianka
#>     <dbl>
#>  1 0.109 
#>  2 0.147 
#>  3 0.0516
#>  4 0.130 
#>  5 0.0793
#>  6 0.143 
#>  7 0.153 
#>  8 0.255 
#>  9 0.211 
#> 10 0.146 
#> 
```
