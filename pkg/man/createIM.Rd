\name{createIM}
\alias{createIM}
\alias{createPage}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Create the HTML section for an imagemap}
\description{
  Write out the HTML for the imagemap. 
}
\usage{
createIM(im, file = "", imgTags)
createPage(im, file="", imgTags)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{im}{An imagemap object}
  \item{file}{A file or connection}
  \item{imgTags}{A list to generate extra parameters to the IMG tag}
}

\details{
  These functions create the HTML code for the imagemap. You can either
  just create the imagemap section with \code{createIM} or a complete HTML page
  with \code{createHTML}. 
}

\references{http://www.maths.lancs.ac.uk/Software/Imagemap/}
\author{Barry Rowlingson <B.Rowlingson@lancaster.ac.uk>}

\keyword{device}
