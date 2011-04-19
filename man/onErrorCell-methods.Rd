\name{onErrorCell-methods}
\docType{methods}
\alias{onErrorCell}
\alias{onErrorCell-methods}
\alias{onErrorCell,workbook,character-method}
\title{ Behavior when error cells are detected }
\description{
This function defines the behavior when reading data from a worksheet and error cells
are detected.
}
\usage{
\S4method{onErrorCell}{workbook,character}(object,behavior)
}

\arguments{
  \item{object}{The \code{\linkS4class{workbook}} to use}
  \item{behavior}{The behavior to follow when an error cell is detected. This is normally
  specified by a corresponding \code{\link{XLC}} error constant, i.e. either
  \code{XLC$"ERROR.WARN"} or \code{XLC$"ERROR.STOP"}. \code{XLC$"ERROR.WARN"} means the
  error cell will be read as missing value (\code{NA}) and a corresponding warning will be
  generated (this is the default behavior). \code{XLC$"ERROR.STOP"} means that an exception
  will be thrown and further execution will be stopped immediately.
}

\author{
Martin Studer\cr
Mirai Solutions GmbH \url{http://www.mirai-solutions.com}
}
\seealso{
\code{\linkS4class{workbook}}, \code{\link[=readNamedRegion-methods]{readNamedRegion}},
\code{\link{readNamedRegionFromFile}}, \code{\link[=readWorksheet-methods]{readWorksheet}},
\code{\link{readWorksheetFromFile}}
}
\examples{
}
\keyword{utilities}
\keyword{error}