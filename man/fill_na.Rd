% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fill_na.R
\name{fill_na}
\alias{fill_na}
\alias{fill_na.default}
\alias{fill_na.tbl_df}
\alias{fill_na.data.frame}
\title{Fill NA with the last no-NA value generic.}
\usage{
fill_na(x, ...)

\method{fill_na}{default}(x, ...)

\method{fill_na}{tbl_df}(x, ...)

\method{fill_na}{data.frame}(x, ...)
}
\arguments{
\item{x}{a data.frame or a vector}

\item{...}{col names character vector or just bare name.}
}
\value{
data.frame or a vector
}
\description{
This method can apply to numeric vector, data.frame/tibble. grouped_df.
If you want to apply to data.frame/tibble, please \code{library(dplyr)}.
}
\examples{
x <- c(1, NA, NA, 2, 3)
y <- c(NA, NA, 1, NA, 3)
xy <- data.frame(x,y)
fill_na(x)
fill_na(y)
\dontrun{
# require(dplyr)
fill_na(xy, x, y)
fill_na(xy, c("x","y"))
fill_na(xy, starts_with("x"))
}
}
\seealso{
\code{\link[tidyr]{fill}} \code{\link[dplyr]{group_by}}
}
