\name{imPoint}
\alias{imPoint}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Point region on an imagemap}
\description{
 Specify a point region on an imagemap
}
\usage{
imPoint(x, y, w, h, ...)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{x}{X coordinate of centre of point}
  \item{y}{Y coordinate of centre of point}
  \item{w}{width of region}
  \item{h}{height of region}
  \item{\dots}{Extra arguments for the AREA tag}
}
\details{
 This function specifies a rectangular region centred on a point for imagemaps.
}
\value{
 An object for adding to imagemaps
}
\references{http://www.maths.lancs.ac.uk/Software/Imagemap/}
\author{Barry Rowlingson <B.Rowlingson@lancaster.ac.uk>}

\keyword{device}
