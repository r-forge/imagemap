\name{addRegion<-}
\alias{addRegion<-}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Add clickable region to imagemap}
\description{
  This function adds a clickable region to an imagemap.
}
\usage{
addRegion(im) <- value
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{im}{An object of class imagemap}
  \item{value}{An object representing a clickable area}
}
\details{
  Add clickable regions to an imagemap with such function calls as
  addRegion(im)<-imRect(xy,href="r1.html")
}

\references{http://www.maths.lancs.ac.uk/Software/Imagemap/}
\author{Barry Rowlingson <B.Rowlingson@lancaster.ac.uk>}

\keyword{device}
