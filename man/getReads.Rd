% Generated by roxygen2 (4.0.2): do not edit by hand
\name{getReads}
\alias{getReads}
\title{Get reads from Google Genomics.}
\usage{
getReads(readsetId = "CMvnhpKTFhDnk4_9zcKO3_YB", chromosome = "22",
  start = 16051400, end = 16051500, fields = NULL, converter = c)
}
\arguments{
\item{readsetId}{The readset ID.}

\item{chromosome}{The chromosome.}

\item{start}{Start position on the chromosome.}

\item{end}{End position on the chromosome.}

\item{fields}{A subset of fields to retrieve.  The default (NULL) will
return all fields.}

\item{converter}{A function that takes a list of read R objects and returns
them converted to the desired type.}
}
\value{
By default, the return value is a list of R objects
corresponding to the JSON objects returned by the Google Genomics
Reads API.  If a converter is passed, object(s) of the type
returned by the converter will be returned by this function.
}
\description{
This function will return all of the reads that comprise the requested
genomic range, iterating over paginated results as necessary.
}
\details{
By default, this function gets reads for a small genomic region for one
sample in 1,000 Genomes.

Optionally pass a converter as appropriate for your use case.  By passing it
to this method, only the converted objects will be accumulated in memory. The
converter function should return an empty container of the desired type
if called without any arguments.
}

