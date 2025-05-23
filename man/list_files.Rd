% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/list-files.R
\name{list_files}
\alias{list_files}
\title{List Files in Directory}
\usage{
list_files(path, recurse, all)
}
\arguments{
\item{path}{A character vector of one or more paths.}

\item{recurse}{If \code{TRUE} recurse fully, if a positive number the number of levels
to recurse.}

\item{all}{If \code{TRUE} hidden files are also returned.}
}
\value{
A character vector of unique file paths. If no files are found, the function aborts with a
message suggesting how to adjust search parameters (\code{recurse} and \code{all}), and includes a
class-specific error identifier depending on the search mode:
\itemize{
\item \code{"error_list_files_TT"} for \code{recurse = TRUE}, \code{all = TRUE}
\item \code{"error_list_files_TF"} for \code{recurse = TRUE}, \code{all = FALSE}
\item \code{"error_list_files_FT"} for \code{recurse = FALSE}, \code{all = TRUE}
\item \code{"error_list_files_FF"} for \code{recurse = FALSE}, \code{all = FALSE}
}
}
\description{
Lists all files from a given directory with support for recursive search and inclusion of hidden files.
The function throws a specific error when no files are found, based on the combination of
\code{recurse} and \code{all} parameters. Returned file paths are made unique and are assumed to be
normalized using forward slashes (\code{/}).
}
\examples{
\dontrun{
list_files("myfolder", recurse = TRUE, all = FALSE)
}

}
\keyword{internal}
