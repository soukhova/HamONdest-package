## ----libraries setup, eval=TRUE, echo=FALSE-----------------------------------
library(HamONdest)
library(ggplot2)
library(dplyr)
library(sf)

## ----schools-changed-2011-2016, eval=TRUE, warning=FALSE----------------------
ggplot() +
  geom_sf(data = Ham_CityBound,
          size = 0.5,
          alpha = 0.5,
          color  = "black",
          fill = "white")+
  geom_sf(data = Schools_201516_201011 %>% filter(Status != "NoChange"),
          aes(col = Status, size = Level),
          shape = 1) 

## ----city-owned-properties-detail, eval=TRUE, warning=FALSE-------------------
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

