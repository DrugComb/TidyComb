% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculate_sensitivity.R
\name{CalculateSens}
\alias{CalculateSens}
\title{Calculate relative inhibition (RI) for dose-response curve}
\usage{
CalculateSens(df, pred = FALSE)
}
\arguments{
\item{df}{A data frame. It contains two variables:
\itemize{
  \item \strong{dose} the concentrations of drugs.
  \item \strong{response} the response of cell lines at crresponding doses.
  We use inhibition rate of cell line growth to measure the response.
}}

\item{pred}{A logical value. If it is \code{TRUE}, the function will
return one more table in the result. It contains the predicted response value
at input doses (according to fitted dose-response model) and corresponding
standard deviation. This table could be used in \code{TRUE}.

\strong{Note}: The input data frame must be sorted by "dose" with ascending
order.}
}
\value{
If \code{pred} is \code{FALSE}, only the RI value will be return. If
\code{pred} is set to be \code{TRUE}, one more data frame which contains
predicted resposne values and corresponding standard deviations will be
return. It could be used to \code{\link{RIConfidenceInterval}} for confidence
interval calculation.
}
\description{
Function \code{CalculateSens} calculates cell line sensitivity to a drug or a
combination of drugs from dose response curve.
}
\details{
This function measures the sensitivity by calculating the Area Under Curve
(AUC) according to the dose response curve. The lower bouder is chosen as
lowest non-zero concentration in the dose response data.
}
\examples{
# LL.4
df <- data.frame(dose = c(0, 0.1954, 0.7812, 3.125, 12.5, 50),
                 response = c(2.95, 3.76, 18.13, 28.69, 46.66, 58.82))
RI <- CalculateSens(df)

RI_with_pred <- CalculateSens(df, pred = TRUE)
}
\author{
Jing Tang \email{jing.tang@helsinki.fi}
Shuyu Zheng \email{shuyu.zheng@helsinki.fi}
}
