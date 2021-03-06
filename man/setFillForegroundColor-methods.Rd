\name{setFillForegroundColor-methods}
\docType{methods}
\alias{setFillForegroundColor}
\alias{setFillForegroundColor-methods}
\alias{setFillForegroundColor,cellstyle,numeric-method}
\title{Specifying the fill foreground color for cell styles}
\description{
Specifies the fill foreground color for a \code{\linkS4class{cellstyle}}.
}
\usage{
\S4method{setFillForegroundColor}{cellstyle,numeric}(object,color)
}

\arguments{
  \item{object}{The \code{\linkS4class{cellstyle}} to manipulate}
  \item{color}{The fill foreground color to use for the \code{\linkS4class{cellstyle}}. 
  The \code{color} is normally specified via a corresponding color constant from the 
  \code{\link{XLC}} object. }
}

\author{
Martin Studer\cr
Mirai Solutions GmbH \url{http://www.mirai-solutions.com}
}
\seealso{
\code{\linkS4class{workbook}}, \code{\linkS4class{cellstyle}}, \code{\link[=setCellStyle-methods]{setCellStyle}}, 
\code{\link[=setStyleAction-methods]{setStyleAction}}, \code{\link{XLC}}
}
\examples{\dontrun{
# Load workbook (create if not existing)
wb <- loadWorkbook("setFillForegroundColor.xlsx", create = TRUE)

# Create a worksheet
createSheet(wb, name = "cellstyles")

# Create a custom anonymous cell style
cs <- createCellStyle(wb)

# Specify the fill background color for the cell style created above
setFillBackgroundColor(cs, color = XLC$"COLOR.CORNFLOWER_BLUE")

# Specify the fill foreground color
setFillForegroundColor(cs, color = XLC$"COLOR.YELLOW")

# Specify the fill pattern
setFillPattern(cs, fill = XLC$"FILL.BIG_SPOTS")

# Set the cell style created above for the top left cell (A1) in the
# 'cellstyles' worksheet
setCellStyle(wb, sheet = "cellstyles", row = 1, col = 1, cellstyle = cs)

# Save the workbook
saveWorkbook(wb)

# clean up 
file.remove("setFillForegroundColor.xlsx")
}
}
\keyword{methods}
\keyword{utilities}
