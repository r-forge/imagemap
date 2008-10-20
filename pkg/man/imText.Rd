\name{imText}
\alias{imText}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Text for an imagemap}
\description{
 Specify some text for an imagemap
}
\usage{
imText(x,y,string,pars, ...)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{x}{X coordinate of text anchor}
  \item{y}{Y coordinate of text anchor}
  \item{string}{The text to add}
  \item{pars}{Graphical parameters for the underlying \code{text} function}
  \item{\dots}{Extra arguments for the AREA tag}
}
\details{
 This function specifies a block of text for an imagemap.
}
\value{
 An object for adding to imagemaps.
}
\references{http://www.maths.lancs.ac.uk/Software/Imagemap/}
\author{Barry Rowlingson <B.Rowlingson@lancaster.ac.uk>}

\keyword{device}
