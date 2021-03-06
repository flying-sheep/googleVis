% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/gvisHistogram.R
\name{gvisHistogram}
\alias{gvisHistogram}
\title{Google Histogram Chart with R
\Sexpr{googleChartName <- "histogram"}
\Sexpr{gvisChartName <- "gvisHistogram"}}
\usage{
gvisHistogram(data, options = list(), chartid)
}
\arguments{
\item{data}{a \code{\link{data.frame}} to be displayed as a histogram.
Each column will be displayed as a histogram.}

\item{options}{list of configuration options, see

% START DYNAMIC CONTENT

\Sexpr[results=rd]{gsub("CHARTNAME",
googleChartName,
readLines(file.path(".", "inst",  "mansections",
"GoogleChartToolsURLConfigOptions.txt")))}

 \Sexpr[results=rd]{paste(readLines(file.path(".", "inst",
 "mansections", "gvisOptions.txt")))}}

\item{chartid}{character. If missing (default) a random chart id will be
generated based on chart type and \code{\link{tempfile}}.}
}
\value{
\Sexpr[results=rd]{paste(gvisChartName)} returns list
of \code{\link{class}}
 \Sexpr[results=rd]{paste(readLines(file.path(".", "inst",
 "mansections", "gvisOutputStructure.txt")))}
}
\description{
The gvisHistogram function reads a data.frame and creates text output
referring to the Google Visualisation API, which can be included into a web
page, or as a stand-alone page. The actual chart is rendered by the web
browser using SVG or VML.
}
\examples{
## Please note that by default the googleVis plot command
## will open a browser window and requires an internet
## connection to display the visualisation.


hist1 <- gvisHistogram(dino)
plot(hist1)

## Histogram of the top 20 countries
pop <- Population[1:20,c("Country", "Population")]
pop=transform(pop, Population=round(Population/1e6))

hist2 <- gvisHistogram(pop, option=list(title="Country Populations",
                                    legend="{ position: 'none' }",
                                    colors="['green']"))
plot(hist2)

set.seed(123)
dat=data.frame(A=rpois(100, 20),
               B=rpois(100, 5),
               C=rpois(100, 50))
hist3 <- gvisHistogram(dat, options=list(
                       legend="{ position: 'top', maxLines: 2 }",
                       colors="['#5C3292', '#1A8763', '#871B47']"))

plot(hist3)
}
\author{
Markus Gesmann \email{markus.gesmann@gmail.com},

Diego de Castillo \email{decastillo@gmail.com}
}
\references{
Google Chart Tools API:
\Sexpr[results=rd]{gsub("CHARTNAME",
googleChartName,
readLines(file.path(".", "inst",  "mansections",
"GoogleChartToolsURL.txt")))}

% END DYNAMIC CONTENT
}
\seealso{
See also \code{\link{print.gvis}}, \code{\link{plot.gvis}} for
printing and plotting methods
}
\keyword{iplot}

