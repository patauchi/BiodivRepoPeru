library(rworldmap)
library(rgdal)

pe <- getMap(resolution = "low")
pe <- pe[which(grepl('South America', pe$GEO3) & as.character(pe$NAME) == 'Peru'),] 

pe <- buffer

dir.create('pe')
writeOGR(pe, 'pe','peru','ESRI Shapefile')

