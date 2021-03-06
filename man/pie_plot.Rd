% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pie_plot.R
\name{pie_plot}
\alias{pie_plot}
\title{Generate quick pie plot}
\usage{
pie_plot(
  data_type = c("variable", "variable.locality"),
  varId,
  year,
  unitParentId = NULL,
  unitLevel = NULL,
  aggregateId = NULL,
  label = T,
  lang = c("pl", "en"),
  ...
)
}
\arguments{
\item{data_type}{A type of data used for generating plot, "variable"(default), "variable","variable.locality"}

\item{varId}{A variable Id. Use \code{\link{search_variables}} or
\code{\link{get_variables}} to find variable id code.}

\item{year}{A single year. If \code{NULL} (default) returns data for all available years.}

\item{unitParentId}{A 12 character NUTS id code of interested unit. Use \code{\link{search_units}} or
\code{\link{get_units}} to find unit id code.}

\item{unitLevel}{A number from 0 to 6, filters the returned unit by its level. 
(Used only with data_type equal "variable")
If \code{NULL} (default) no level filters apply. Use \code{\link{get_levels}} to find more info.}

\item{aggregateId}{An aggregate id. Use \code{\link{get_aggregates}} for more info.}

\item{label}{Logical; if TRUE (default) adds labels.}

\item{lang}{A language of returned data, "pl" (default), "en"}

\item{...}{Other arguments passed on to \code{\link[httr]{GET}}. For example
a proxy parameters, see details.}
}
\value{
A ggplot2 plot.
}
\description{
Generate pie plot for variable/multiple units
}
\details{
Generate quickly `ggplot2` plot, using BDL data.
  
  Pie plot one variable value for multiple units on single year.
  
  
  To use a proxy to connect, a \code{\link[httr]{use_proxy}} can be
  passed to \code{\link[httr]{GET}}. For example
  \code{get_request(id, filters,
  config = httr::use_proxy(url, port, username, password))}.
}
\examples{
   # pie_plot(data_type ="variable" ,"1", "2018",unitParentId="042214300000", unitLevel = "6")
}
