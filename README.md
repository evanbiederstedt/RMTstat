[![<evanbiederstedt>](https://circleci.com/gh/evanbiederstedt/RMTstat.svg?style=svg)](https://app.circleci.com/pipelines/github/evanbiederstedt/RMTstat)
[![CRAN status](https://www.r-pkg.org/badges/version/RMTstat)](https://cran.r-project.org/package=RMTstat)
[![CRAN downloads](https://cranlogs.r-pkg.org/badges/RMTstat)](https://cran.r-project.org/package=RMTstat)


# RMTstat
An R package for distributions from random matrix theory

Fork of the original R package of the [(now archived) GitHub repo](https://github.com/patperry/r-rmtstat) in order to maintain the package for CRAN. 

For more details, see the page on [CRAN](https://cran.r-project.org/web/packages/RMTstat/index.html).

## RMTstat: Distributions, Statistics and Tests derived from Random Matrix Theory

Functions for working with the Tracy-Widom laws and other distributions related to the eigenvalues of large Wishart matrices. The tables for computing the Tracy-Widom densities and distribution functions were computed by Momar Dieng's MATLAB package "RMLab". This package is part of a collaboration between Iain Johnstone, Zongming Ma, Patrick Perry, and Morteza Shahram. It will soon be replaced by a package with more accuracy and built-in support for relevant statistical tests.


## Installation


To install the stable version from [CRAN](https://CRAN.R-project.org/package=RMTstat), use:

```r
install.packages('RMTstat')
```


To install the latest version of `RMTstat`, use:

```r
install.packages('devtools')
devtools::install_github('evanbiederstedt/RMTstat')
```


## References

### R package citation

The R package can be cited as follows:

```
Iain M. Johnstone, Patrick O. Perry, Zongming Ma, and Morteza Shahram
(2014). RMT: Distributions, Statistics and Tests derived from Random
Matrix Theory. R package version 0.3.1.
```