library(maps)
library(mapproj)
library(mapdata)


#lonlats for four locations
lon = c(-123.2, -123.25, -123.3, -123.5)
lat = c(49.25, 49.3, 48.45, 48.6)
stations = c("GOB1", "GOB2", "GOB3", "SI")
#map in area of interest
map("worldHires",  xlim=c(-128,-122), ylim=c(48,50), col = 80, fill=TRUE)
points(lon, lat, pch=20, cex=1.2, col= c('red', 'green', 'blue', 'black'))
legend('bottom', stations,pch=20, cex=0.75, pt.cex=1.2, col= c('red', 'green', 'blue', 'black'), ncol = 4, bty = "n", bg ="o")


#Or read in locations from csv
stations = read.csv("/Users/jan/Desktop/g43_stations_lat_lon.csv")
LON = stations$LONG
LAT = stations$LAT
lon = c(LON)
lat = c(LAT)
leg = c("SI", "SOG")
#make map
map("worldHires",  xlim=c(-129,-122), ylim=c(48,52), col = 80, fill=TRUE)
points(lon, lat, pch=20, cex=1.2, col= stations$Cruise)
legend('bottom', leg,pch=20, cex=0.75, pt.cex=1.2, col= c('red', 'black'), ncol = 2, bty = "n", bg ="o")


