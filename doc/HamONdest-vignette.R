## ----libraries setup, eval=TRUE, message=FALSE, warning=FALSE-----------------
library(HamONdest)
library(ggplot2)
library(dplyr)
library(sf)

## ----schools-changed-2011-2016, eval=TRUE, message=FALSE, warning=FALSE-------
ggplot() +
  geom_sf(data = Ham_CityBound,
          size = 0.5,
          alpha = 0.5,
          color  = "black",
          fill = "white")+
  geom_sf(data = Schools_201516_201011 %>% filter(Status != "NoChange"),
          aes(col = Status, size = Level),
          shape = 1) 

## ----city-owned-properties-detail, eval=TRUE, message=FALSE, warning=FALSE----
ggplot() +
  geom_sf(data = Ham_CityBound,
          size = 0.5,
          alpha = 0.5,
          color  = "black",
          fill = "white")+
  geom_sf(data = City_Owned_Property %>% filter(CATEGORY_TYPE == "Underdeveloped Outdoor"),
          aes(size = PROP_AREA, col = 1), 
          shape = 1) +
  guides(col = F)

## ----eval=TRUE, message=FALSE, warning=FALSE----------------------------------
#join the ward boundary to the care_facilities object and filter out all "NA" wards (i.e. those not inside the Hamilton urban boundary). Remember, these are all the care facilities for the entire Hamilton CMA which is broader than just the Hamilton urban boundary.
Care_Facilities_Ham <- Care_Facilities %>% st_join(Ham_WardBound) %>% filter(!is.na(WARD))

#display all types contained within the care_facilities
unique(Care_Facilities_Ham$Type)

## ----eval=TRUE, message=FALSE, warning=FALSE----------------------------------
#filter only Long-Term Care Home OR Residential Care Facility
Care_Facilities_Ham <- Care_Facilities_Ham %>% filter(Type == "Long-Term Care Home" | Type == "Residential Care Facility")

#group by ward and count number of facilities within ward
Ward_count <- Care_Facilities_Ham %>% group_by(WARD) %>% summarise(LTC_RCF_Count = n()) %>% st_drop_geometry() %>% as.data.frame()
Ward_count 

## ----eval=TRUE, message=FALSE, warning=FALSE----------------------------------
#merge ward_count to the Ward boundaries and keep all fields from ward_count and from the ward boundaries (this will ensure Ward 11 is retained)
Ward_count <- Ward_count %>% merge(Ham_WardBound, by=c("WARD"), all=T) %>% mutate(LTC_RCF_Count = ifelse(WARD=="11", 0, LTC_RCF_Count)) %>%  st_sf()

## ----care-facilities-detailed, eval=TRUE, message=FALSE, warning=FALSE--------
#plot
ggplot() +
  geom_sf(data = Ward_count,
          aes(fill = LTC_RCF_Count))+ 
  scale_fill_viridis_c(trans = "sqrt", alpha = .8)

