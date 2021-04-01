library(rworldmap)
library(rgdal)

pe <- getMap(resolution = "low")
pe <- pe[which(grepl('South America', pe$GEO3) & as.character(pe$NAME) == 'Peru'),] 


dir.create('pe')
writeOGR(pe, 'pe','peru','ESRI Shapefile')


library(sf)
pe <- read_sf('/Volumes/SEAGATE/sig/gis/Countries/PER/PER_adm2.shp')
pe<- pe[,'NAME_2']

regions_1k <- sf::st_simplify(pe, preserveTopology = TRUE, dTolerance = 0.008333)
plot(regions_1k)

write_sf(obj=regions_1k, dsn='pe',layer='peru_2',driver='ESRI Shapefile')
