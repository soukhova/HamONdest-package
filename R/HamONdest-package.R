#' @keywords internal
"_PACKAGE"

# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
## usethis namespace: end
NULL

#' HamONdest: A package with destinations in Hamilton, Ontario, Canada augmented with attributes to facilitate accessibility and mobility calculations.
#'
#' The goal of HamONdest is to compile all potential destinations (Schools, parks, municipally-owned land, libraries, etc.) in Hamilton, Ontario, Canada all in one data-package to facilitate the calculation of accessibility and mobility measures in the transportation planning context.
#'
#' @docType package
#' @name HamONdest-package
#' @author Anastasia Soukhov, School of Earth, Environment and Society, McMaster University \email{soukhoa@@mcmaster.ca}
#' @references \url{https://github.com/soukhova/HamONdest-package}
NULL

#' Care_Facilities
#'
#'This object a few types of health and community care facilities/services (Hospitals, Residential Care Facilities, Long-Term Care Homes, Community or Health Support Services, Independent Health Facilities, Pharmacies, and Primary Health Services) represented as spatial points.
#'
#' @format A simple feature class (sf) point object containing 668 rows and 11 variables; each row represents a health/community care facility/service and thus addresses may be repeated if the location hosts multiple facilities/services.
#' \describe{
#'   \item{Name}{Name of facilities as specifed by the City of Hamilton or by Ontario Ministry of Health .}
#'   \item{Service_Type}{The type of service offered as described by the the Ontario Ministry of Health service provider locations feature layer documentation.}
#'   \item{Service_Desc}{The service as described by the the Ontario Ministry of Health service provider locations feature layer documentation.}
#'   \item{Address}{The address as supplied by the City of Hamilton or the Ontario Ministry of Health service provider locations feature layer documentation.}
#'   \item{Address_2}{Additional address details (unit number, floor, etc.).}
#'   \item{Postalcode}{Postal code.}
#'   \item{Address_Desc}{The address of the service may be either the "Pratice Location", "Administrative Office", "Administration and Practice Location", or blank. This field is specified by the the Ontario Ministry of Health service provider locations feature layer documentation.}
#'   \item{Community}{The community in which the service address is located in; either "Hamilton", "Burlington", "Grimbsy", or "NA".}
#'   \item{Type}{Type of facility, either "Community or Health Support Service", "Primary Health Service", "Fee-Based Independent Health Facility", "Hospital", "Laboratory - Specimen Collection Centre", or "Long-Term Care Home", "Pharmacy", or "Residential Care Facility" .}
#'   \item{Supply}{The number of 'supply' offered by the facility; for "Residential Care Facility" type this is the capacity range available at the location as specified by the City of Hamilton Open Data layer; all other types are unassigned (for now).}
#'   \item{geometry}{The sfc point geometry (location) of each facility/service.}
#'}
#' @docType data
#' @keywords Hamilton hospital health clinic care residential
#' @name Care_Facilities
#' @usage data(Care_Facilities)
#' @source "Licensed residential care facilities" from [Hamilton Open Data](https://open.hamilton.ca/datasets/e37b13a002544e359350c31b2d48ee47_10/about) accessed November 10 2021; "Ministry of Health service provider locations" from [Ontario GeoHub](https://geohub.lio.gov.on.ca/datasets/lio::ministry-of-health-service-provider-locations/about) accessed November 14 2021.
"Care_Facilities"

#' City_Owned_Property
#'
#'This object contains all city owned properties represented as as spatial points in the City of Hamilton.
#'
#' @format A simple feature class (sf) point object containing 1902 rows and 9 variables.
#' \describe{
#'   \item{LOCATION}{Approximate street address of the city-owned property land asset.}
#'   \item{PROP_AREA}{Area of the land asset in units of Acres.}
#'   \item{WARD}{Ward number of the land asset; this value aligns with "Ham_WardBound" object.}
#'   \item{COMMUNITY}{The current City of Hamilton consists of same six municipalities which form the Regional Municipality of Hamilton-Wentworth. These muncipalites are represented as 1) "An" for Ancaster, 2) "Du" for Dundas, 3) "Fl" for Flamborough, 4) "Gl" for Glanbrook, 5) "Ha" for Hamilton, and 6) "St" for Stoney Creek.}
#'   \item{LEGAL_DESC}{Description of the associated legal property document; likely for interal reference at the City.}
#'   \item{CATEGORY}{The category of the land asset, either: Parks and/or Open Space; Land; Utility; Open Space; Civic; Proposed Park; Recreation; Cemetery; Parking Lot; Cultural; Accessway; Road; Proposed Road; Utility. The city assigned these categories to each point and some include multiple categories (i.e. "Cemetery/Civc"). Use 'unique(City_Own_Prop$CATEGORY)' to see all combinations of categories.}
#'   \item{ASSET_NAME}{Name of the property as assigned by the City. ~41% of rows do not have an assigned name (NA).}
#'   \item{geometry}{The sfc point geometry (location) of each asset.}
#'   \item{CATEGORY_TYPE}{The type of category; this is an author assigned field grouping categories into 7 types namely: "Developed Outdoor" which corresponds to  parks, open space, cementery, with civic infrastructure; "Underdeveloped Outdoor" which corresponds to cementeries with no infrastructure, flat land with mowed grass, proposed park space; "Remove" which corresponds to categories which are not destinations such as road, utility, accessway (an egress or ingress); "Natural/Open Space" which corresponds to natural areas, hydro lines, areas around storm management ponds, post-agricultural land; "Civic Service" which corresponds to Civic categories such as firestation, townhall, police station, airport; "Recreation/Cultural" which corresponds to locations such as library, historical buildings open to the public, golf courses, community centers, recreation centres, environmental education centres, stadiums; and "Parking Lots" which correspond to any properties with parking lots. See 00-Data-Preparation.Rmd for the specific categories which each category type is associated with.}
#'}
#' @docType data
#' @keywords Hamilton recreation outdoor open land
#' @name City_Owned_Property
#' @usage data(City_Owned_Property)
#' @source "City-Owned Properties" from [Hamilton Open Data](https://open.hamilton.ca/datasets/14fabf23a4d34c30836a70a22ccd8fb0_14/about) accessed November 8 2021.
"City_Owned_Property"

#' Ham_CityBound
#'
#'This object defines the spatial boundary of the City of Hamilton.
#'
#' @format A simple feature class (sfc) multipolygon object containing 1 row.
#'
#' @docType data
#' @keywords Hamilton city boundary
#' @name Ham_CityBound
#' @usage data(Ham_CityBound)
#' @source "City boundary" from [Hamilton Open Data](https://open.hamilton.ca/datasets/489f656072f44f34b07bf53efa0d8e4f_13/about) accessed November 8 2021.
"Ham_CityBound"

#' Ham_WardBound
#'
#'This object defines the spatial boundary of the City of Hamilton.
#'
#' @format A simple feature class (sf) polygon object containing 15 rows and 2 variables.
#' \describe{
#'   \item{WARD}{A unique numeric ID for each ward in Hamilton. Each ward serves as an electoral boundary and is assigned a voted-in city councillor.}
#'   \item{geometry}{The sfc polygon geometry of each ward boundary}
#'}
#' @docType data
#' @keywords Hamilton ward boundaries
#' @name Ham_WardBound
#' @usage data(Ham_WardBound)
#' @source "Ward Boundaries" from [Hamilton Open Data](https://open.hamilton.ca/datasets/8b0b1f2bf8bb4e1da3a1bf567b17b77f_7/about) accessed November 8 2021.
"Ham_WardBound"

#' HamCMA_DABound_2011
#'
#'This object defines the spatial boundaries of all dissemination areas (DA) in Hamilton according to the Canadian 2011 Census
#'
#' @format A simple feature (sf) polygon object containing 1180 rows and 22 variables. All variables correspond to an ID associated with the associated DA (dissemination area), CD (census division), CSD (census subdivision), CCS (census consolidated subdivision), ER (economic region), CMA (census metropolitan area), sac (Statistical Area Classification), CT (census tract), PR (Province). These IDs are persistent and can be used to join an area to the nation-wide Statistics Canada Census data for 2011 and 2016 respectively.
#'
#' @docType data
#' @keywords Hamilton DA boundary
#' @name HamCMA_DABound_2011
#' @usage data(HamCMA_DABound_2011)
#' @source filtered the "Boundary files" retrieved from [Statistics Canada](https://www12.statcan.gc.ca/census-recensement/2011/geo/bound-limit/bound-limit-eng.cfm) accessed November 8 2021.
"HamCMA_DABound_2011"

#' HamCMA_DABound_2016
#'
#'This object defines the spatial boundaries of all dissemination areas (DA) in Hamilton according to the Canadian 2016 Census
#'
#' @format A simple feature (sf) polygon object containing 1180 rows and 22 variables. All variables correspond to an ID associated with the associated DA (dissemination area), CD (census division), CSD (census subdivision), CCS (census consolidated subdivision), ER (economic region), CMA (census metropolitan area), sac (Statistical Area Classification), CT (census tract), PR (Province). These IDs are persistent and can be used to join an area to the nation-wide Statistics Canada Census data for 2011 and 2016 respectively.
#'
#' @docType data
#' @keywords Hamilton DA boundary
#' @name HamCMA_DABound_2016
#' @usage data(HamCMA_DABound_2016)
#' @source filtered the "Boundary files" retrieved from [Statistics Canada](https://www12.statcan.gc.ca/census-recensement/2011/geo/bound-limit/bound-limit-eng.cfm) accessed November 8 2021.
"HamCMA_DABound_2016"

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
#' @source Historical Enrollment: sourced from "Ontario public schools enrolment" [Ontario Open Data](https://data.ontario.ca/dataset/ontario-public-schools-enrolment). Accessed: November 7, 2021
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

