\name{imCircle}
\alias{imCircle}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Circular region on an imagemap}
\description{
 Specify a circular region for an imagemap.
}
\usage{
imCircle(xc, yc, r, ...)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{xc}{X coordinate of centre of circle}
  \item{yc}{Y coordinate of centre of circle}
  \item{r}{Radius of circle}
  \item{\dots}{Extra arguments for the AREA tag}
}
\details{
  This function specifies a circular region that can be added to an
  imagemap object. Note that: the region is circular on the graphics
  file output pixels, with a radius of the number of pixels
  corresponding to the radius in X-coordinate units. It will not be a
  true circle in 'plot' space unless the plot aspect ratio is 1.
}
\value{
 An object for adding to imagemaps
}
\references{http://www.maths.lancs.ac.uk/Software/Imagemap/}
\author{Barry Rowlingson <B.Rowlingson@lancaster.ac.uk>}


\keyword{device}
