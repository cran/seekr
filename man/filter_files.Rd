% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter-files.R
\name{filter_files}
\alias{filter_files}
\title{Filter Files by Pattern and Content Type}
\usage{
filter_files(files, filter, negate, n = 1000L)
}
\arguments{
\item{files}{A character vector of files to search (only for \code{seek_in()}).}

\item{filter}{Optional. A regular expression pattern used to filter file paths
before reading. If \code{NULL}, all text files are considered.}

\item{negate}{Logical. If \code{TRUE}, files matching the \code{filter} pattern are excluded
instead of included. Useful to skip files based on name or extension.}

\item{n}{The number of bytes to read for binary detection in files with unknown extensions. Defaults to 1000.}
}
\value{
A character vector of file paths identified as potential text files.
If no matching files are found, an informative error is thrown.
}
\description{
Filters a character vector of file paths using a user-defined pattern and additional
content-based criteria to ensure only likely text files are retained.

This function applies multiple filters:
\itemize{
\item A regex-based path filter (if provided).
\item Exclusion of files located within \code{.git} folders.
\item Exclusion of files with known binary or non-text extensions.
\item A fallback scan for embedded null bytes to detect binary content in ambiguous files.
}
The function returns a filtered character vector of file paths likely to be valid text files.
}
\keyword{internal}
