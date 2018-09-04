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
la <- filter(shape_Tract, COUNTYFP == "037")
sf <- st_transform(sf, crs = proj1)
la <- st_transform(la, crs = proj1)

# warning is fine
sf_poly <- st_cast(sf, "POLYGON")
la_poly <- st_cast(la, "POLYGON")

sf_noislands  <- ms_filter_islands(sf_poly, min_area = 1000000) 
tm_shape(sf_noislands) + tm_polygons()
la_noislands <- ms_filter_islands(la_poly, min_area = 337369307) 
tm_shape(la_noislands) + tm_polygons()

# This is not necessarily working because the "islands" are not
# really islands. For both SF and for LA they have tiny little
# bits that are attached to either the mainland or the other
# islands


#https://www.flickr.com/photos/stevefaeembra/34500665382


"06037599100" # this is the big one
"06037599000" # this is the tiny one


tm_shape(la[119,]) + tm_polygons(col="ALAND")

# FF2 FF1 211, disjoint
# 2FF F1F FF2, identical
# FF2 F11 212, intersect at boundaries

# big one is two pieces
relationships <- st_relate(filter(la_poly, GEOID == "06037599100"), la_poly)

# Here is the island with the tiny piece. It says there is 1 identical
# 2345 disjoint and 1 that matches at intersection
table(relationships[1,]) 

# Here we have one identical and 2346 match at intersection
table(relationships[2,])




