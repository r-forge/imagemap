\name{imagemap}
\alias{imagemap}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Initialise an imagemap object}
\description{
 Initialise an imagemap object.
}
\usage{
imagemap(filename, width = 480, height = 480)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{filename}{Root of filename for map and graphic file}
  \item{width}{Width of graphic file in pixels}
  \item{height}{Height of graphic file in pixels}
}
\details{
  This function initialises a PNG graphics output device and
  returns an empty imagemap object to which clickable areas can be added.
}
\value{
 An object of class imagemap.
}
\references{http://www.maths.lancs.ac.uk/Software/Imagemap/}
\author{Barry Rowlingson <B.Rowlingson.ac.uk>}


\examples{
im <- imagemap("Test1",width=800,height=800)
}



\keyword{device}
