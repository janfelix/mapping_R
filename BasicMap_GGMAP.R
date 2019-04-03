###Mapping with ggmap
library(ggmap)

#get map of interest
#loc = c(-128, 48, -122, 50)
#m = get_map(location=loc, source="stamen", maptype="toner", crop=FALSE)
#m = get_map(location=loc, source="osm", color="bw", crop=FALSE)
#m = get_map(location=loc, source="google", maptype="terrain", crop=FALSE)

#specifc googlemaps
#gg = get_googlemap(center= c(lon = -124, lat = 49), zoom = 8, maptype = "satellite", color = "color")

#specific stamen map
st = get_stamenmap(bbox= c(left = -128, bottom = 48, right = -122, top = 50), zoom = 8, maptype = "terrain-background", crop = TRUE, color = "bw")

#points to map
coord = read.csv("/Users/.csv")

#plot map with points
latlon = ggmap(st) + geom_point(data=coord, size=4, aes(x=lon, y=lat, shape=Station))
