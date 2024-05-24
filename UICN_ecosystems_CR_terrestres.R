## Paquetes##
library(terra)
library(sf)
library(dbplyr)
library(raster)

## Referencia para cortar capas originales##

# Línea de costa de Costa Rica_ Atlas Digital de CR 2014
cr <- read_sf("bordecr2008polycrtm05.shp")
cr1 <- st_transform(cr, crs="EPSG:4326")

## Capas globales para el ambito terrestres descargadas de: DOI 10.5281/zenodo.3546513.

## Ambito terrestre ##

#T1.1Tropical/Subtropical lowland rainforests

t1_1 <- rast("Ambito_terrestre/T1.1.web.mix_v2.0.tif")

t1_1_cr <- crop(t1_1, cr1,mask=TRUE)

t1_1_cr2 <- project(t1_1_cr, "EPSG:5367")

writeRaster(t1_1_cr2, "CR_ambito_terrestre/T1_1_CR.tif", overwrite=TRUE, datatype="INT1U")

# T1.2Tropical/Subtropical dry forests and thickets

t1_2 <- rast("Ambito_terrestre/T1.2.web.mix_v1.0.tif")

t1_2_cr <- crop(t1_2, cr1,mask=TRUE)
t1_2_cr2 <- project(t1_2_cr, "EPSG:5367")

writeRaster(t1_2_cr2, "CR_ambito_terrestre/T1_2_CR.tif", overwrite=TRUE, datatype="INT1U")


### Tropical/subtropical montane rainforest

t1_3 <- rast("Ambito_terrestre/T1.3.WM.nwx_v1.0_ed.tif")

t1_3_cr <- crop(t1_3, cr1,mask=TRUE)

t1_3_cr2 <- project(t1_3_cr, "EPSG:5367")

writeRaster(t1_3_cr2, "CR_ambito_terrestre/T1_3_CR.tif", overwrite=TRUE, datatype="INT1U")


# T3.4Young rocky pavements, lava flows and screes

t3_4 <- rast("Ambito_terrestre/T3.4.web.mix_v1.0.tif")

t3_4_cr <- crop(t3_4, cr1,mask=TRUE)

t3_4_cr2 <- project(t3_4_cr, "EPSG:5367")

writeRaster(t3_4_cr2, "CR_ambito_terrestre/T3_4_CR.tif", overwrite=TRUE, datatype="INT1U")

# T6.5Tropical alpine grasslands and herbfields 

t6_5 <- rast("Ambito_terrestre/T6.5.web.mix_v1.0.tif")

t6_5_cr <- crop(t6_5, cr1,mask=TRUE)

t6_5_cr2 <- project(t6_5_cr, "EPSG:5367")

writeRaster(t6_5_cr2, "CR_ambito_terrestre/T6_5_CR.tif", overwrite=TRUE, datatype="INT1U")

# T7.1Annual croplands

t7_1 <- rast("Ambito_terrestre/T7.1.web.alt_v2.0.tif")

t7_1_cr <- crop(t7_1, cr1,mask=TRUE)

t7_1_cr2 <- project(t7_1_cr, "EPSG:5367")

writeRaster(t7_1_cr2, "CR_ambito_terrestre/T7_1_CR.tif", overwrite=TRUE, datatype="INT1U")


# T7.2Sown pastures and fields 

t7_2 <- rast("Ambito_terrestre/T7.2.web.map_v1.0.tif")

t7_2_cr <- crop(t7_2, cr1,mask=TRUE)

t7_2_cr2 <- project(t7_2_cr, "EPSG:5367")

writeRaster(t7_2_cr2, "CR_ambito_terrestre/T7_2_CR.tif", overwrite=TRUE, datatype="INT1U")

# T7.3Plantations

t7_3 <- rast("Ambito_terrestre/T7.3.web.alt_v2.0.tif")

t7_3_cr <- crop(t7_3, cr1,mask=TRUE)

t7_3_cr2 <- project(t7_3_cr, "EPSG:5367")

writeRaster(t7_3_cr2, "CR_ambito_terrestre/T7_3_CR.tif", overwrite=TRUE, datatype="INT1U")

# T7.4Urban and industrial ecosystems

t7_4 <- rast("Ambito_terrestre/T7.4.web.orig_v1.0.tif")

t7_4_cr <- crop(t7_4, cr1,mask=TRUE)

t7_4_cr2 <- project(t7_4_cr, "EPSG:5367")

writeRaster(t7_4_cr2, "CR_ambito_terrestre/T7_4_CR.tif", overwrite=TRUE, datatype="INT1U")


#T7.5Derived semi-natural pastures and old fields

t7_5 <- rast("Ambito_terrestre/T7.5.web.mix_v1.0.tif")

t7_5_cr <- crop(t7_5, cr1,mask=TRUE)

t7_5_cr2 <- project(t7_5_cr, "EPSG:5367")

writeRaster(t7_5_cr2, "CR_ambito_terrestre/T7_5_CR.tif", overwrite=TRUE, datatype="INT1U")
