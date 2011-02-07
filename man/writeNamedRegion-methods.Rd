\name{writeNamedRegion-methods}
\docType{methods}
\alias{writeNamedRegion}
\alias{writeNamedRegion-methods}
\alias{writeNamedRegion,workbook,ANY,character,logical-method}
\alias{writeNamedRegion,workbook,ANY,character,missing-method}
\title{Writing named regions to a workbook}
\description{
Writes named regions to a \code{\linkS4class{workbook}} object.
}
\section{Methods}{
\describe{

\item{\code{signature(object = "workbook", data = "ANY", name = "character", 
header = "logical")}}{
Writes \code{data} to the named region specified by \code{name}. Note that \code{data} is assumed to be
a \code{data.frame} and is coerced to one if this is not already the case. The argument \code{header} specifies
if the column names should be written. Note also that the arguments are vectorized and as such multiple named
regions can be written with one call. In this case \code{data} is assumed to be a list of data objects
(\code{data.frame}'s).
}

\item{\code{signature(object = "workbook", data = "ANY", name = "character", 
header = "missing")}}{
The same as above with \code{header = TRUE}.
}
}}
\references{
What are named regions/ranges? \url{http://www.officearticles.com/excel/named_ranges_in_microsoft_excel.htm}\cr
How to create named regions/ranges? \url{http://www.youtube.com/watch?v=iAE9a0uRtpM}
}
\author{
Martin Studer\cr
Mirai Solutions GmbH \url{http://www.mirai-solutions.com}
}
\note{
Named regions are automatically redefined to the area occupied by the written cells. This guarantees that the
complete set of data can be re-read using \code{\link[=readNamedRegion-methods]{readNamedRegion}}. Also, this allows
the named region just to be defined as the top left cell to be written to. There is no need to know the exact size
of the data in advance.\cr\cr
When writing data to Excel, \code{writeNamedRegion} further applies cell styles to the cells as defined by the
\code{\linkS4class{workbook}}'s "style action" (see \code{\link[=setStyleAction-methods]{setStyleAction}}).
}
\seealso{
\code{\linkS4class{workbook}}, \code{\link[=writeWorksheet-methods]{writeWorksheet}},
\code{\link[=readNamedRegion-methods]{readNamedRegion}}, \code{\link[=readWorksheet-methods]{readWorksheet}}
}
\examples{
# Load workbook (create if not existing)
wb <- loadWorkbook("writeNamedRegion.xlsx", create = TRUE)

# Create a worksheet named 'mtcars'
createSheet(wb, name = "mtcars")

# Create a named region called 'mtcars' on the sheet called 'mtcars'
createName(wb, name = "mtcars", formula = "mtcars!$A$1")

# Write built-in data set 'mtcars' to the above defined named region
# (using header = TRUE)
writeNamedRegion(wb, mtcars, name = "mtcars")

# Save workbook (this actually writes the file to disk)
saveWorkbook(wb)
}
\keyword{methods}
\keyword{IO}