
<!-- README.md is generated from README.Rmd. Please edit that file -->

# HamONdest

<!-- badges: start -->
<!-- badges: end -->

The goal of HamONdest is to compile all potential destinations (Schools,
municipally-owned land, parks, libraries, etc.) and their estimated
‘demands’ in Hamilton, Ontario, Canada all in one data-package to
facilitate the calculation of accessibility and mobility measures in the
transportation planning context. The majority of data is sourced from
[Hamilton’s Open Data Portal](https://open.hamilton.ca/) and is
augmented with additional open data from higher levels of government
(provincial and federal), predicted values, and/or data from
[OpenStreetMap](https://www.openstreetmap.org).

## Installation

You can install the released version of HamONdest using:

``` r
if(!require(remotes)){
    install.packages("remotes")
    library(remotes)
}
remotes::install_github("soukhova/HamONdest")
```

## Example

The data package contains the following destinations in Hamilton,
Ontario.

``` r
library(HamONdest)
library(dplyr)

#Elementary and Secondary Public and Public Catholic Schools in 2011, size based on on-the-ground-capacity (OTGC)
ggplot2::ggplot() +
  ggplot2::geom_sf(data = HamONdest::Ham_CityBound,
          size = 0.5,
          alpha = 0.5,
          color  = "black",
          fill = "white")+
  ggplot2::geom_sf(data = filter(HamONdest::Schools_201516_201011, Year != "2016"),
          ggplot2::aes(col = OTGC2011),
          shape = 1,
          size = 3) +
  ggplot2::scale_color_distiller(palette = "Spectral")
```

``` r
#Elementary and Secondary Public and Public Catholic Schools in 2016, size based on on-the-ground-capacity (OTGC)
ggplot2::ggplot() +
  ggplot2::geom_sf(data = HamONdest::Ham_CityBound,
          size = 0.5,
          alpha = 0.5,
          color  = "black",
          fill = "white")+
  ggplot2::geom_sf(data = filter(HamONdest::Schools_201516_201011, Year != "2011"),
          ggplot2::aes(col = OTGC2016),
          shape = 1,
          size = 3) +
  ggplot2::scale_color_distiller(palette = "Spectral")
```

``` r
#The change in Elementary and Secondary Public and Public Catholic Schools between 2011 and 2016.)
ggplot2::ggplot() +
  ggplot2::geom_sf(data = HamONdest::Ham_CityBound,
          size = 0.5,
          alpha = 0.5,
          color  = "black",
          fill = "white")+
  ggplot2::geom_sf(data = filter(HamONdest::Schools_201516_201011, Status != "NoChange"),
          ggplot2::aes(col = Status, size = Level),
          shape = 1) 
```

``` r
#Coordinate system and projection
sf::st_crs(HamONdest::Schools_201516_201011)
```
