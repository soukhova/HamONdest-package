#' @keywords internal
"_PACKAGE"

# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
## usethis namespace: end
NULL

#' Ham_CityBound
#'
#'This object define the spatial boundary of the City of Hamilton.
#'
#' @format A simple feature class (sfc) multipolygon object containing 1 row.
#'
#' @docType data
#' @keywords Hamilton city boundary
#' @name Ham_CityBound
#' @usage data(Ham_CityBound)
#' @source "City boundary" from Hamilton Open Data (https://open.hamilton.ca/datasets/489f656072f44f34b07bf53efa0d8e4f_13/about) accessed November 8 2021.
"Ham_CityBound"

#' HamCMA_DABound_2011
#'
#'This object define the spatial boundary of the City of Hamilton.
#'
#' @format A simple feature (sf) polygon object containing 1180 rows and 22 variables. All variables correspond to an ID associated with the associated DA (dissemination area), CD (census division), CSD (census subdivision), CCS (census consolidated subdivision), ER (economic region), CMA (census metropolitan area), sac (Statistical Area Classification), CT (census tract), PR (Province). These IDs are persistent and can be used to join an area to the nation-wide Statistics Canada Census data for 2011 and 2016 respectively.
#'
#' @docType data
#' @keywords Hamilton city boundary
#' @name HamCMA_DABound_2011
#' @usage data(HamCMA_DABound_2011)
#' @source filtered the "Boundary files" retrieved from Statistics Canada (https://www12.statcan.gc.ca/census-recensement/2011/geo/bound-limit/bound-limit-eng.cfm) accessed November 8 2021.
"HamCMA_DABound_2011"

#' HamCMA_DABound_2016
#'
#'This object define the spatial boundary of the City of Hamilton.
#'
#' @format A simple feature (sf) polygon object containing 1180 rows and 22 variables. All variables correspond to an ID associated with the associated DA (dissemination area), CD (census division), CSD (census subdivision), CCS (census consolidated subdivision), ER (economic region), CMA (census metropolitan area), sac (Statistical Area Classification), CT (census tract), PR (Province). These IDs are persistent and can be used to join an area to the nation-wide Statistics Canada Census data for 2011 and 2016 respectively.
#'
#' @docType data
#' @keywords Hamilton city boundary
#' @name HamCMA_DABound_2016
#' @usage data(HamCMA_DABound_2016)
#' @source filtered the "Boundary files" retrieved from Statistics Canada (https://www12.statcan.gc.ca/census-recensement/2011/geo/bound-limit/bound-limit-eng.cfm) accessed November 8 2021.
"HamCMA_DABound_2016"

#' HamONdest: A package with destinations in Hamilton, Ontario, Canada augmented with attributes to facilitate accessibility and mobility calculations.
#'
#' The goal of HamONdest is to compile all potential destinations (Schools, parks, municipally-owned land, libraries, etc.) in Hamilton, Ontario, Canada all in one data-package to facilitate the calculation of accessibility and mobility measures in the transportation planning context.
#'
#' @docType package
#' @name HamONdest-package
#' @author Anastasia Soukhov, School of Earth, Environment and Society, McMaster University \email{soukhoa@@mcmaster.ca}
#' @references \url{https://github.com/soukhova/HamONdest}
NULL

#' Schools_201516_201011
#'
#' A simple feature object containing all public and public catholic schools (elementary and secondary)
#' in Hamilton, Ontario, Canada for the 2015-2016 and 2010-2011 academic years. Between the two years 154 schools remained in the same location,
#' 3 moved (6 locations between these 3 schools), 3 were new in 2015-2016 (did not exist in 2010-2011), and 14 were removed in 2015-2016
#' (only existed in 2010-2011).
#' Between the two years, 177 public and public catholic school locations existed in Hamilton, Ontario, Canada.
#'
#' @format A simple feature (sf) point object containing 177 rows and 19 variables :
#' \describe{
#'   \item{SchoolID}{A unique character value for each school. Schools which are identical between the two years have the same ID but carry the suffix ".1011" or ".1516" depending on which year they are associated with.}
#'   \item{Name}{Name of school}
#'   \item{CID2011}{An integer ID corresponding to which the 2010-2011 catchment the school is located within; an ID associated with either a public elementary, public secondary, catholic elementary, or catholic secondary catchment.}
#'   \item{CID2016}{An integer ID corresponding to which the 2015-2016 catchment the school is located within; an ID associated with either a public elementary, public secondary, catholic elementary, or catholic secondary catchment.}
#'   \item{System}{A character tag identifying which school system the school belongs to (either "Public" or "Catholic")}
#'   \item{Level}{A characer tag identifying which school level the school instructs (either "High" or "Elementary"). Elementary indicates instruction of grades JK through 8 (approx. ages 5 to 13) and Secondary indicates instruction of grades 9 through 12 (approx. ages 14 to 18)}
#'   \item{Year}{A character tag identifying what year the information contained within the row corresponds to the school (either "2011 and 2016", "2011" or "2016" where 2011 and 2016 is shorthand for 2010-2011 and 2015-2016 respectively).}
#'   \item{Status}{A character tag identifying who the information corresponding to the school changed in that Year. The tag is either "NoChange" or "Expanded" aligning with the Year tag of "2011 and 2016"; "Moved" aligning with the Year tag of "2016" or "2011"; "New" aligning with the Year tag of "2016"; "Removed" aligning with the Year tag of "2011".}
#'   \item{ON_Enrol_2011}{The number of students historically enrolled in the school for the 2011-2012 academic year as sourced from the Ontario Open Data "Ontario public schools enrolment" dataset. Note, 2010-2011 is not available from the portal, so the oldest year available, 2011-2012, is used.}
#'   \item{ON_Enrol_2016}{The number of students historically enrolled in the school for the 2015-2016 academic year as sourced from the Ontario Open Data "Ontario public schools enrolment" dataset.}
#'   \item{footprint2011}{The footprint of the school building in the year 2010 in units of m^2 - derived from spatial polygons produced by DMTI Spatial Inc. using GeoScholars (retrieved January 17, 2021)}
#'   \item{footprint2016}{The footprint of the school buidling in the year 2016 in units of m^2 - derived from spatial polygons archieved by OpenStreetMaps (retrieved January 17, 2021)}
#'   \item{ELEM}{Binary character tag identifying if the school is an Elementary school (Grades JK to 8) or not ("ELEM" or "0")}
#'   \item{MID}{Binary character tag identifying if the school is a Middle school (Grades 6 to 8) or not ("MID" or "0"). Note: a Middle school is a type of Elementary school so all Middle schools are Elementary Schools but not all Elementary schools are Middle schools.}
#'   \item{HIGH}{Binary character tag identifying if the school is a Secondary school (Grades 9 to 12) or not ("HIGH" or "0")}
#'   \item{geometry}{The sf point geometry}
#'   \item{urban.dist}{Distance away (in units of 'm') from the centroid of the Central Buisness District (the lat-long coordinate of "King St W and James St S: (43.256684, -79.869039)). This distance is used as a 'proxy' for age of construction as schools further from the CBD are likely newer.}
#'   \item{OTGC2011}{Estimated on-the-ground-capacity (OTGC) for the 2010-2011 academic year - units of students}
#'   \item{OTGC2016}{Estimated on-the-ground-capacity (OTGC) for the 2015-2016 academic year - units of students}
#' }
#'
#' @docType data
#' @keywords school catchment student
#' @name Schools_201516_201011
#' @usage data(Schools_201516_201011)
#' @source School name, catchment ID, system, level, year, status are sourced from spatial points provided directly by the Hamilton Wentworth District School Board (HWDSB) and the Hamilton Wentworth Catholic District School Board (HWCDSB) for the respective academic years (2010-2011 and 2015-2016).
#' @source Historical Enrollment: sourced from Ontario Open Data "Ontario public schools enrolment" (https://data.ontario.ca/dataset/ontario-public-schools-enrolment). Accessed: November 7, 2021
#' @source Footprint area: sourced from spatial polygons from DMTI Spatial Inc. using GeoScholars (retrieved January 17, 2021) and  OpenStreetMaps (retrieved January 17, 2021)
#' @examples
#'  data(Schools_201516_201011)
#'  OTGC2011 <- Schools_201516_201011$OTGC2011
"Schools_201516_201011"

#' Schools_Catchments_201516_201011
#'
#' A simple feature object containing all public and public catholic schools catchments (elementary and secondary) in Hamilton, Ontario, Canada for the 2015-2016 and 2010-2011 academic years.
#' This object should be used alongside 'Schools_201516_201011'.
#'
#' @format A simple feature (sf) polygon object containing 305 rows and 5 variables :
#' \describe{
#'   \item{CID}{A unique integer ID fpr each catchment.}
#'   \item{geometry}{The sf polygon geometry}
#'   \item{Year}{A character tag identifying what year of the catchment (either "2011 and 2016", "2011" or "2016" where 2011 and 2016 is shorthand for 2010-2011 and 2015-2016 respectively).}
#'   \item{Level}{A characer tag identifying the level of the catchment (either "High" or "Elementary"). Elementary indicates instruction of grades JK through 8 (approx. ages 5 to 13) and Secondary indicates instruction of grades 9 through 12 (approx. ages 14 to 18)}
#'   \item{System}{A character tag identifying the system of the catchment (either "Public" or "Catholic")}
#' }
#'
#' @docType data
#' @keywords school catchment student
#' @name Schools_Catchments_201516_201011
#' @usage data(Schools_Catchments_201516_201011)
#' @source Catchment ID, geometry, year, level, and system are sourced from spatial polygons provided directly by the Hamilton Wentworth District School Board (HWDSB) and the Hamilton Wentworth Catholic District School Board (HWCDSB) for the respective academic years (2010-2011 and 2015-2016).
#' @examples
#'  data(Schools_201516_201011)
#'  CID <- Schools_Catchments_201516_201011$CID
"Schools_Catchments_201516_201011"

