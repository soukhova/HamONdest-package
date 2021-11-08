
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
remotes::install_github("soukhova/HamONdest-package")
```

## Examples

``` r
library(HamONdest)
library(ggplot2)
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union

Schools_201516_201011 <- HamONdest::Schools_201516_201011
Schools_Catchments_201516_201011 <- HamONdest::Schools_Catchments_201516_201011
Ham_CityBound <- HamONdest::Ham_CityBound
```

The data package contains the following destinations in Hamilton,
Ontario.

Elementary and Secondary Public and Public Catholic Schools in 2011,
size based on on-the-ground-capacity (OTGC)

``` r
ggplot() +
  geom_sf(data = Ham_CityBound,
          size = 0.5,
          alpha = 0.5,
          color  = "black",
          fill = "white") +
  geom_sf(data = Schools_201516_201011 %>% filter(Year != "2016"),
          aes(col = OTGC2011),
          shape = 1,
          size = 3) +
  scale_color_distiller(palette = "Spectral")
```

<img src="man/figures/README-schools 2011-1.png" width="100%" />

Elementary and Secondary Public and Public Catholic Schools in 2016,
size based on on-the-ground-capacity (OTGC)

``` r
ggplot() +
  geom_sf(data = Ham_CityBound,
          size = 0.5,
          alpha = 0.5,
          color  = "black",
          fill = "white")+
  geom_sf(data = Schools_201516_201011 %>% filter(Year != "2011"),
          aes(col = OTGC2016),
          shape = 1,
          size = 3) +
  scale_color_distiller(palette = "Spectral")
```

<img src="man/figures/README-schools 2016-1.png" width="100%" />

The change in Elementary and Secondary Public and Public Catholic
Schools between 2011 and 2016.

``` r
ggplot() +
  geom_sf(data = Ham_CityBound,
          size = 0.5,
          alpha = 0.5,
          color  = "black",
          fill = "white")+
  geom_sf(data = Schools_201516_201011 %>% filter(Status != "NoChange"),
          aes(col = Status, size = Level),
          shape = 1) 
```

<img src="man/figures/README-schools changed 2011 and 2016-1.png" width="100%" />

Coordinate system and projection

``` r
sf::st_crs(Schools_201516_201011)
#> Coordinate Reference System:
#>   User input: NAD83 / UTM zone 17N 
#>   wkt:
#> PROJCRS["NAD83 / UTM zone 17N",
#>     BASEGEOGCRS["NAD83",
#>         DATUM["North American Datum 1983",
#>             ELLIPSOID["GRS 1980",6378137,298.257222101,
#>                 LENGTHUNIT["metre",1]]],
#>         PRIMEM["Greenwich",0,
#>             ANGLEUNIT["degree",0.0174532925199433]],
#>         ID["EPSG",4269]],
#>     CONVERSION["UTM zone 17N",
#>         METHOD["Transverse Mercator",
#>             ID["EPSG",9807]],
#>         PARAMETER["Latitude of natural origin",0,
#>             ANGLEUNIT["Degree",0.0174532925199433],
#>             ID["EPSG",8801]],
#>         PARAMETER["Longitude of natural origin",-81,
#>             ANGLEUNIT["Degree",0.0174532925199433],
#>             ID["EPSG",8802]],
#>         PARAMETER["Scale factor at natural origin",0.9996,
#>             SCALEUNIT["unity",1],
#>             ID["EPSG",8805]],
#>         PARAMETER["False easting",500000,
#>             LENGTHUNIT["metre",1],
#>             ID["EPSG",8806]],
#>         PARAMETER["False northing",0,
#>             LENGTHUNIT["metre",1],
#>             ID["EPSG",8807]]],
#>     CS[Cartesian,2],
#>         AXIS["(E)",east,
#>             ORDER[1],
#>             LENGTHUNIT["metre",1]],
#>         AXIS["(N)",north,
#>             ORDER[2],
#>             LENGTHUNIT["metre",1]],
#>     ID["EPSG",26917]]
```

## More Information

This data package is still a work in progress.
