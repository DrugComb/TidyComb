% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculate_pipeline.R
\name{ParCalculateTemplate}
\alias{ParCalculateTemplate}
\title{Parallel Calculate Drug Combination data in template format}
\usage{
ParCalculateTemplate(
  template,
  cores = 1,
  summary.only = FALSE,
  seed = NULL,
  ...
)
}
\arguments{
\item{template}{a dataframe in the format as template. Columns "block_id",
"drug_row", "drug_col", "inhibition", "conc_r", "conc_c", "conc_r_unit",
"conc_c_unit","cell_line_name", "drug_row", "drug_col" are reqired.}

\item{cores}{A integer. It indicates number of cores would be allocated to
the parallel processed}

\item{summary.only}{a logical value. If it is \code{TRUE} then only summary
table is calculated and returned, otherwise, for tables will be return.
Default setting is \code{FALSE}.}

\item{seed}{a integer or NULL. It is used to set the random seed to
\code{AddNoise} function to make sure the results are reproducible.
By default, it is set as NULL which means no seed was set.}

\item{...}{Other arguments required by nested functions. Some important
arguments are:
 \itemize{
   \item \code{impute} and \code{noise} inherited from function
         \code{CalculateMat};
   \item \code{method} inherited from function \code{CorrectBaseLine};
   \item \code{Emin} and \code{Emax} inherited from function
         \code{FitDoseResponse}.
}}
}
\value{
A list. It contains 4 tables:
  \itemize{
    \item \strong{response} It contains the modified inhibition value and 4
    type of synergy scores of each drug dose response pair.
    \item \strong{summary} It contains summarized information of each
    blocks: synergy scores, css, ri, S
    \item \strong{curve} It contains the coefficients from single drug dose
    response curve.
    \item \strong{surface} It contains the smoothed inhibition value and
    synergy scores of each drug dose response pair.
 }
}
\description{
Parallel Calculate Drug Combination data in template format
}
\examples{
data <- read.csv(system.file("template.csv", package = "TidyComb"),
                 stringsAsFactors = FALSE)
res <- ParCalculateTemplate(data)
}
\author{
Jing Tang \email{jing.tang@helsinki.fi}
Shuyu Zheng \email{shuyu.zheng@helsinki.fi}
}
