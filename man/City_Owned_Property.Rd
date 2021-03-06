% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/HamONdest-package.R
\docType{data}
\name{City_Owned_Property}
\alias{City_Owned_Property}
\title{City_Owned_Property}
\format{
A simple feature class (sf) point object containing 1902 rows and 9 variables.
\describe{
\item{LOCATION}{Approximate street address of the city-owned property land asset.}
\item{PROP_AREA}{Area of the land asset in units of Acres.}
\item{WARD}{Ward number of the land asset; this value aligns with "Ham_WardBound" object.}
\item{COMMUNITY}{The current City of Hamilton consists of same six municipalities which form the Regional Municipality of Hamilton-Wentworth. These muncipalites are represented as 1) "An" for Ancaster, 2) "Du" for Dundas, 3) "Fl" for Flamborough, 4) "Gl" for Glanbrook, 5) "Ha" for Hamilton, and 6) "St" for Stoney Creek.}
\item{LEGAL_DESC}{Description of the associated legal property document; likely for interal reference at the City.}
\item{CATEGORY}{The category of the land asset, either: Parks and/or Open Space; Land; Utility; Open Space; Civic; Proposed Park; Recreation; Cemetery; Parking Lot; Cultural; Accessway; Road; Proposed Road; Utility. The city assigned these categories to each point and some include multiple categories (i.e. "Cemetery/Civc"). Use 'unique(City_Own_Prop$CATEGORY)' to see all combinations of categories.}
\item{ASSET_NAME}{Name of the property as assigned by the City. ~41\% of rows do not have an assigned name (NA).}
\item{geometry}{The sfc point geometry (location) of each asset.}
\item{CATEGORY_TYPE}{The type of category; this is an author assigned field grouping categories into 7 types namely: "Developed Outdoor" which corresponds to  parks, open space, cementery, with civic infrastructure; "Underdeveloped Outdoor" which corresponds to cementeries with no infrastructure, flat land with mowed grass, proposed park space; "Remove" which corresponds to categories which are not destinations such as road, utility, accessway (an egress or ingress); "Natural/Open Space" which corresponds to natural areas, hydro lines, areas around storm management ponds, post-agricultural land; "Civic Service" which corresponds to Civic categories such as firestation, townhall, police station, airport; "Recreation/Cultural" which corresponds to locations such as library, historical buildings open to the public, golf courses, community centers, recreation centres, environmental education centres, stadiums; and "Parking Lots" which correspond to any properties with parking lots. See 00-Data-Preparation.Rmd for the specific categories which each category type is associated with.}
}
}
\source{
"City-Owned Properties" from \href{https://open.hamilton.ca/datasets/14fabf23a4d34c30836a70a22ccd8fb0_14/about}{Hamilton Open Data} accessed November 8 2021.
}
\usage{
data(City_Owned_Property)
}
\description{
This object contains all city owned properties represented as as spatial points in the City of Hamilton.
}
\keyword{Hamilton}
\keyword{land}
\keyword{open}
\keyword{outdoor}
\keyword{recreation}
