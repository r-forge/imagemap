\name{imagemap}
\alias{imagemap}
\alias{imClose}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Initialise an imagemap object}
\description{
 Initialise and close an imagemap object.
}
\usage{
imagemap(filename, width = 480, height = 480, title="Imagemap from R")
imClose(im)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{filename}{Root of filename for map and graphic file}
  \item{width}{Width of graphic file in pixels}
  \item{height}{Height of graphic file in pixels}
  \item{title}{Text for HTML title - not the plot title}
  \item{im}{An imagemap object}
}
\details{
  \code{imagemap} initialises a PNG graphics output device and
  returns an empty imagemap object to which clickable areas can be
  added. The \code{imClose} function must be called when all drawing
  is done in order to close the underlying PNG device.
}
\value{
 An object of class imagemap.
}
\references{http://www.maths.lancs.ac.uk/Software/Imagemap/}
\author{Barry Rowlingson <B.Rowlingson@lancaster.ac.uk>}


\examples{
im <- imagemap("Test1",width=800,height=800)
}



\keyword{device}
