\name{getCellStyle-methods}
\docType{methods}
\alias{getCellStyle}
\alias{getCellStyle-methods}
\alias{getCellStyle,workbook,character-method}
\alias{getCellStyle,workbook,missing-method}
\title{Creating custom named and anonymous cell styles}
\description{
Retrieves a named cell style from a workbook.
}
\usage{
\S4method{getCellStyle}{workbook,character}(object,name)
}

\details{
Retrieves cell style with the specified \code{name}. 
}

\author{
Martin Studer\cr
\href{Mirai Solutions GmbH}{http://www.mirai-solutions.com}
}
\seealso{
\code{\linkS4class{workbook}}, \code{\linkS4class{cellstyle}}, \code{\link[=setStyleAction-methods]{setStyleAction}}, 
\code{\link[=setStyleNamePrefix-methods]{setStyleNamePrefix}}, \code{\link[=setCellStyle-methods]{setCellStyle}},
\code{\link[=setDataFormat-methods]{setDataFormat}}, \code{\link[=setBorder-methods]{setBorder}},
\code{\link[=setFillBackgroundColor-methods]{setFillBackgroundColor}}, \code{\link[=setFillForegroundColor-methods]{setFillForegroundColor}},
\code{\link[=setFillPattern-methods]{setFillPattern}}, \code{\link[=setWrapText-methods]{setWrapText}}
}
\examples{
# Load workbook (create if not existing)
wb <- loadWorkbook("getCellstyles.xlsx", create = TRUE)

# You wouldn't usually ignore the return value here...
createCellStyle(wb, 'Header')

# ... but if you did it doesn't hurt.
cs <- getCellStyle(wb, 'Header')

# Specify the cellstyle to use a solid foreground color
setFillPattern(cs, fill = XLC$"FILL.SOLID_FOREGROUND")
# Specify the foreground color to be used
setFillForegroundColor(cs, color = XLC$"COLOR.RED")

}
\keyword{methods}
\keyword{utilities}