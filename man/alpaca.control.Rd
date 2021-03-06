% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/alpaca.control.R
\name{alpaca.control}
\alias{alpaca.control}
\title{Set \code{alpaca} Control Parameters}
\usage{
alpaca.control(step.tol = 1e-08, grad.tol = 1e-04, dev.tol = 1e-08,
  pseudo.tol = 1e-08, rho.tol = 1e-04, iter.max = 100L, trace = 0L,
  drop.pc = TRUE, ...)
}
\arguments{
\item{step.tol}{tolerance level for one of the stopping conditions in the IRLS
algorithm. This specific stopping condition is based on the euclidean norm of
the step size in iteration \eqn{r} and can be expressed as follows: 
\eqn{||\boldsymbol{\beta}_{r} - \boldsymbol{\beta}_{r - 1}||_{2} < 
\text{tol}}{||step|| < tol}. Default is \code{1.0e-08}.}

\item{grad.tol}{tolerance level for one of the stopping conditions in the IRLS
algorithm. This specific stopping condition is based on the euclidean norm of
the gradient in iteration \eqn{r} and can be expressed as follows: 
\eqn{||\mathbf{g}_{r}||_{2} < \text{tol}}{||g|| < tol}.
Default is \code{1.0e-04}.}

\item{dev.tol}{tolerance level for one of the stopping conditions in the IRLS
algorithm. This specific stopping condition is based on the relative change
of the deviance in iteration \eqn{r} and can be expressed as follows: 
\eqn{\Delta \text{dev}_{r} / \text{dev}_{r} < \text{tol}}{\Delta dev / dev <
 tol}. Default is \code{1.0e-08}.}

\item{pseudo.tol}{tolerance level for the stopping condition of the pseudo demeaning
algorithm. The stopping condition is based on the euclidean norm of the step
size in iteration \eqn{i} and can be expressed as follows: 
\eqn{||\mathbf{v}_{i} - \mathbf{v}_{i - 1}||_{2} < \text{tol}}{||step|| <
 tol}. Default is \code{1.0e-08}.}

\item{rho.tol}{tolerance level for the stephalving in iteration \eqn{r}. Stephalving
only takes place if the deviance in iteration \eqn{r} is worse than the one
in the previous iteration. The stopping condition can be expressed as
follows: \eqn{\rho < \text{tol}}{\rho < tol}. Default is \code{1.0e-04}.}

\item{iter.max}{unsigned integer indicating the maximum number of iterations of the
IRLS algorithm.}

\item{trace}{unsigned integer indicating if output should be produced for each
iteration. Default is \code{0}. See \code{Details}.}

\item{drop.pc}{logical indicating to drop observations that are perfectly classified
and hence do not contribute to the log-likelihood. See \code{Details}.
Default is \code{TRUE}.}

\item{...}{other arguments.}
}
\value{
The function \code{alpaca.control} returns a named list of control 
parameters.
}
\description{
Set and change \code{alpaca} control parameters.
}
\details{
...
}
\seealso{
\code{\link{feglm}}
}
