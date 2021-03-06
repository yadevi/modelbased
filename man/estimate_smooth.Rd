% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimate_smooth.R
\name{estimate_smooth}
\alias{estimate_smooth}
\title{Describe the smooth term (for GAMs) or non-linear predictors}
\usage{
estimate_smooth(
  model,
  smooth = NULL,
  levels = NULL,
  length = 200,
  transform = "response",
  ...
)
}
\arguments{
\item{model}{A Bayesian model.}

\item{smooth}{A character indicating the name of the "smooth" term.}

\item{levels}{A character vector indicating the variables over which the slope will be computed. If NULL (default), it will select all the remaining predictors.}

\item{length}{Passed to \code{\link{visualisation_matrix}} if \code{data = "grid"}.}

\item{transform}{Can be \code{"none"} (default for contrasts), \code{"response"} (default for means), \code{"mu"}, \code{"unlink"}, \code{"log"}. \code{"none"}  will leave the values on scale of the linear predictors. \code{"response"} will transform them on scale of the response variable. Thus for a logistic model, \code{"none"} will give estimations expressed in log-odds (probabilities on logit scale) and \code{"response"} in terms of probabilities.}

\item{...}{Arguments passed to or from other methods.}
}
\value{
A dataframe of linear description of non-linear terms.
}
\description{
This function summarise the smooth term trend in terms of linear segments. Using the aproximative derivative, it separates a non-linear vector into quasi-linear segments (in which the trend is either positive or negative). Each of this segment its characterised by its beginning, end, size (in proportion, relative to the total size) trend (the linear regression coefficient) and linearity (the R2 of the linear regression).
}
\details{
See the documentation for your object's class:
\itemize{
 \item{\link[=estimate_smooth.stanreg]{Bayesian models (stanreg and brms)}}
 }
}
