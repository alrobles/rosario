# Example temporal activity dataset

An example dataset of 5 biological identities across 12 time intervals.
Values represent counts of activity events (e.g., detections or
captures) per interval. This dataset is provided for examples and
vignettes.

## Usage

``` r
ex1
```

## Format

A numeric matrix with 5 rows (biological identities) and 12 columns
(time intervals):

- Rows:

  Biological identities (`bioID1` … `bioID5`)

- Columns:

  Time intervals (`INT1` … `INT12`)

- Values:

  Counts of activity per identity × interval

## Examples

``` r
ex1
#>      INT1 INT2 INT3 INT4 INT5 INT6 INT7 INT8 INT9 INT10 INT11 INT12
#> spp1    0    0    0    0   12   75   13    0    0     0     0     0
#> spp2    0    0    0    0   15   78    7    0    0     0     0     0
#> spp3    0    0    0    0   12   79    9    0    0     0     0     0
#> spp4    0    0    0    0   10   80   10    0    0     0     0     0
#> spp5    0    0    0    0    7   81   12    0    0     0     0     0
rowSums(ex1)   # total activity per biological identity
#> spp1 spp2 spp3 spp4 spp5 
#>  100  100  100  100  100 
colSums(ex1)   # total activity per time interval
#>  INT1  INT2  INT3  INT4  INT5  INT6  INT7  INT8  INT9 INT10 INT11 INT12 
#>     0     0     0     0    56   393    51     0     0     0     0     0 
```
