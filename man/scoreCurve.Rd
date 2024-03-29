% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculate_sensitivity.R
\name{scoreCurve}
\alias{scoreCurve}
\title{CSS facilitate function - scoreCurve for curves fitted by LL.4}
\usage{
scoreCurve(b, c, d, m, c1, c2, t)
}
\arguments{
\item{b}{numeric, fitted parameter b from \code{\link[drc]{LL.4()}} model}

\item{c}{numeric, fitted parameter c from \code{\link[drc]{LL.4()}} model}

\item{d}{numeric, fitted parameter d from \code{\link[drc]{LL.4()}} model}

\item{m}{numeric, relative IC50 for the curve. log10(e), where e is the
fitted parameter e from \code{\link[drc]{LL.4()}} model}

\item{c1}{numeric, log10(min conc) (this is the minimal nonzero concentration)}

\item{c2}{numeric, log10(max conc) (this is the maximal concentration)}

\item{t}{numeric, threshold (usually set to zero)}
}
\value{
numeric, RI or CSS scores
}
\description{
New function used to score sensitivities given either a single-agent or a
fixed conc (combination) columns. The function calculates the AUC of the
log10-scaled dose-response curve. \strong{IMPORTANT:} note that with
\code{\link[drc]{LL.4()}} calls, this value is already logged since the
input concentrations are logged.
}
\author{
Jing Tang \email{jing.tang@helsinki.fi}
Shuyu Zheng \email{shuyu.zheng@helsinki.fi}
}
