\name{imRect}
\alias{imRect}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Rectangular region for an imagemap}
\description{
 Specify a rectangular region for an imagemap
}
\usage{
imRect(xleft, ytop, xright, ybottom, ...)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{xleft}{X coordinate of left of rectangle}
  \item{ytop}{Y coordinate of top of rectangle}
  \item{xright}{X coordinate of right of rectangle }
  \item{ybottom}{Y coordinate of bottom of rectangle}
  \item{\dots}{Extra arguments for the AREA tag}
}
\details{
 This function specifies a rectangular region with the given coordinates
 for an imagemap.
}
\value{
 An object for adding to imagemaps.
}
\references{http://www.maths.lancs.ac.uk/Software/Imagemap/}
\author{Barry Rowlingson <B.Rowlingson@lancaster.ac.uk>}

\keyword{device}
