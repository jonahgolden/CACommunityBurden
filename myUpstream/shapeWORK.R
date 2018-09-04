library(tigris) 
library(dplyr)
library(sf)  
library(tmap)
library(rmapshaper) # to remove islands (not yet working)
# USE consistent map projection system throughout all app code !
proj1 <- "+proj=aea +lat_1=34 +lat_2=40.5 +lat_0=0 +lon_0=-120 +x_0=0 +y_0=-4000000 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"
options(tigris_class = "sf")  # Read shape files as Simiple Features objects
shape_Tract  <- tracts(state = "CA", cb = TRUE)  # 8043 tracts  # Obtain tracts boundry tiger files from Census

library(tmap)
# "075" San Francisco;  "037" Los Angeles

sf <- filter(shape_Tract,COUNTYFP == "075")

# Transform to projected coordinates
sf <- st_transform(sf, crs = proj1)
tm_shape(sf) + tm_polygons(col="ALAND")
# Probably you can get away with this if islands are distinctly smaller
# this works in m x m even if you don't project but doesn't limit to islands
# and does not work here
areas <- st_area(sf) %>% unclass()
# hist(areas, breaks = 10000, xlim=c(0, 200000))
# sf2 <- filter(sf, areas>500000)
# tm_shape(sf2) + tm_polygons(col="ALAND")

hist(areas, breaks = 10000, xlim=c(0, 200000))
sf3  <- ms_filter_islands(sf,min_area = 1000000)  
tm_shape(sf3) + tm_polygons(col="ALAND")


# I tried a number of purumtations:
# shape_Tract  <- ms_filter_islands(shape_Tract)
# shape_Tract  <- ms_filter_islands(shape_Tract,min_area = 1) 

tm_shape(filter(shape_Tract,COUNTYFP == "075")) + tm_polygons(col="ALAND")

# change to Los Angeles... No island removed...