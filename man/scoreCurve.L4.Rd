% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculate_sensitivity.R
\name{scoreCurve.L4}
\alias{scoreCurve.L4}
\title{CSS facilitate function - scoreCurve for curves fitted by L.4}
\usage{
scoreCurve.L4(b, c, d, e, c1, c2, t)
}
\arguments{
\item{b}{numeric, fitted parameter b from \code{\link[drc]{L.4()}} model}

\item{c}{numeric, fitted parameter c from \code{\link[drc]{L.4()}} model}

\item{d}{numeric, fitted parameter d from \code{\link[drc]{L.4()}} model}

\item{e}{numeric, fitted parameter e from \code{\link[drc]{L.4()}} model}

\item{c1}{numeric, log10(min conc) (this is the minimal nonzero concentration)}

\item{c2}{numeric, log10(max conc) (this is the maximal concentration)}

\item{t}{numeric, threshold (usually set to zero)}
}
\value{
numeric, RI or CSS scores
}
\description{
This function is used to score sensitivities given either a single-agent or a
fixed conc (combination) columns. The function calculates the AUC of the
log10-scaled dose-response curve.
}
\author{
Jing Tang \email{jing.tang@helsinki.fi}
Shuyu Zheng \email{shuyu.zheng@helsinki.fi}
}
