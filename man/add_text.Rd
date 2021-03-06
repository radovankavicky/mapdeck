% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/map_layer_text.R
\name{add_text}
\alias{add_text}
\title{Add Text}
\usage{
add_text(map, data = get_map_data(map), text, lon = NULL, lat = NULL,
  polyline = NULL, fill_colour = NULL, fill_opacity = NULL, size = NULL,
  angle = NULL, anchor = NULL, alignment_baseline = NULL,
  tooltip = NULL, layer_id, digits = 6, palette = viridisLite::viridis)
}
\arguments{
\item{map}{a mapdeck map object}

\item{data}{data to be used in the layer}

\item{text}{column of \code{data} containing the text}

\item{lon}{column containing longitude values}

\item{lat}{column containing latitude values}

\item{polyline}{column of \code{data} containing the polylines}

\item{fill_colour}{column of \code{data} or hex colour for the fill colour}

\item{fill_opacity}{value between 1 and 255. Either a string specifying the
column of \code{data} containing the fill opacity of each shape, or a value
between 1 and 255 to be applied to all the shapes}

\item{size}{column of \code{data} containing the size of the text}

\item{angle}{column of \code{data} containging the angle of the text}

\item{anchor}{column of \code{data} containing the anchor of the text. One of
'start', 'middle' or 'end'}

\item{alignment_baseline}{column of \code{data} containing the alignment. One of
'top', 'center' or 'bottom'}

\item{tooltip}{variable of \code{data} containing text or HTML to render as a tooltip}

\item{layer_id}{single value specifying an id for the layer. Use this value to
distinguish between shape layers of the same type}

\item{digits}{integer. Use this parameter to specify how many digits (decimal places)
should be used for the latitude / longitude coordinates.}

\item{palette}{a function which generates hex colours}
}
\description{
The Text Layer takes in coordinate points and renders them as circles
with a certain radius.
}
\examples{

\donttest{

## You need a valid access token from Mapbox
key <- 'abc'

mapdeck(
  token = key,
  style = mapdeck_style('dark')
) \%>\%
  add_text(
    data = capitals
    , lon = 'lon'
    , lat = 'lat'
    , fill_colour = 'country'
    , text = 'capital'
    , layer_id = 'text'
  )
}

}
