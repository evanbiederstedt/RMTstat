\name{TracyWidom}
\alias{TracyWidom}
\alias{dtw}
\alias{ptw}
\alias{qtw}
\alias{rtw}
\title{The Tracy-Widom Distributions}
\description{
  Density, distribution function, quantile function, and random
  generation for the Tracy-Widom distribution with order parameter
  \code{beta}.
}
\usage{
dtw(x, beta=1, log = FALSE)
ptw(q, beta=1, lower.tail = TRUE, log.p = FALSE)
qtw(p, beta=1, lower.tail = TRUE, log.p = FALSE)
rtw(n, beta=1)
}
\arguments{
  \item{x,q}{vector of quantiles.}
  \item{p}{vector of probabilities.}
  \item{n}{number of observations. If \code{length(n) > 1}, the length
    is taken to be the number required.}
  \item{beta}{the order parameter (1, 2, or 4).}
  \item{log, log.p}{logical; if TRUE, probabilities p are given as log(p).}
  \item{lower.tail}{logical; if TRUE (default), probabilities are
    \eqn{P[X \le x]}{P[X <= x]}, otherwise, \eqn{P[X > x]}{P[X > x]}.}
}
\value{
  \code{dtw} gives the density,
  \code{ptw} gives the distribution function,
  \code{qtw} gives the quantile function, and
  \code{rtw} generates random deviates.  
}
\details{
  If \code{beta} is not specified, it assumes the default value of \code{1}.
  
  The Tracy-Widom law is the edge-scaled limiting distribution of the 
  largest eigenvalue of a random matrix from the \eqn{\beta}{beta}-ensemble.
  Supported values for \code{beta} are \code{1} (Gaussian Orthogonal Ensemble),
  \code{2} (Gaussian Unitary Ensemble), and \code{4} (Gaussian Symplectic
  Ensemble).
}
\source{
  The distribution and density functions are computed using a lookup table.
  They have been pre-computed at 769 values uniformly spaced between 
  \code{-10} and \code{6} using MATLAB's \code{bvp4c} solver to a minimum 
  accuracy of about \code{3.4e-08}. For all other points, the values are 
  gotten from a cubic Hermite polynomial interpolation. The MATLAB software
  for computing the grid of values is part of RMLab, a package written by 
  Momar Dieng.
  
  The quantiles are computed via bisection using \link{uniroot}.
  
  Random variates are generated using the inverse CDF.
}
\references{
  Dieng, M. (2006). Distribution functions for edge eigenvalues in orthogonal
    and symplectic ensembles: \enc{Painlevé}{Painleve} representations.
    \emph{arXiv:math/0506586v2 [math.PR]}.

  Tracy, C.A. and Widom, H. (1994). Level-spacing distributions and the
    Airy kernel. \emph{Communications in Mathematical Physics}
    \bold{159}, 151--174.
    
  Tracy, C.A. and Widom, H. (1996). On orthogonal and symplectic matrix 
    ensembles. \emph{Communications in Mathematical Phsyics}
    \bold{177}, 727--754.
}
\author{Iain M. Johnstone, Zongming Ma, Patrick O. Perry and Morteza Shahram}
\keyword{distribution}
