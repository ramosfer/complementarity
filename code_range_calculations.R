# Script for analyzing overlaps in individual core ranges
# in support of manuscript:
# "Uncovering complementary information sharing in spider monkey 
# collective foraging using higher-order spatial networks"
# by Ramos-Fernandez, Walker, Silk, Boyer and Smith Aguilar
# April 2025

# Load relevant libraries
library(spatstat)
library(sf)
library(maptools)
library(ridgeline)

## set local directory as %set local path here%/data and code and place all 
## supplied data files there

##### CORE RANGES #####

# dry 2012 loop
# read shapefiles from their directory, one for each season/year combination
setwd("~%set local path here%/data and code/INDIVIDUALES/TEMPORADAS/2012_DRY/CA")
list.indiv.d12 <- list.files(pattern="*.shp") 
indivs.d12.shps <- lapply(list.indiv.d12, read_sf)
# convert the individual polygons to owin objects, and cut the smoothed surface above with each one, checking by plotting that this is correct
for (i in 1:length(indivs.d12.shps)){
  a <- st_geometry(indivs.d12.shps[[i]])
  a <- as(a, "Spatial")
  a <- as.owin.SpatialPolygons(a[1], fatal = TRUE)
  assign(paste0("indiv.d12.", substr(list.indiv.d12[i], 1, 2)), a)
}

#  Construct list of objects wtih mget
d12.list <- mget(ls(pattern = "indiv.d12..."))

names.d12 <- array(NA, length(d12.list))
for (i in 1:length(d12.list)){
  names.d12[i] <- substr(list.indiv.d12[i], 1, 2)
}


# make exploratory plot
plot.owin(d12.list[[1]])
for(i in 1:length(d12.list)){
  plot.owin(d12.list[[i]], add=T)
}


# wet 2012 loop
# read shapefiles from their directory, one for each season/year combination
setwd("~%set local path here%/data and code/INDIVIDUALES/TEMPORADAS/2012_WET/CA")
list.indiv.w12 <- list.files(pattern="*.shp") 
indivs.w12.shps <- lapply(list.indiv.w12, read_sf)
# convert the individual polygons to owin objects, and cut the smoothed surface above with each one, checking by plotting that this is correct
for (i in 1:length(indivs.w12.shps)){
  a <- st_geometry(indivs.w12.shps[[i]])
  a <- as(a, "Spatial")
  a <- as.owin.SpatialPolygons(a[1], fatal = TRUE)
  assign(paste0("indiv.w12.", substr(list.indiv.w12[i], 1, 2)), a)
}

#  Construct list of objects wtih mget
w12.list <- mget(ls(pattern = "indiv.w12..."))
names.w12 <- array(NA, length(w12.list))
for (i in 1:length(w12.list)){
  names.w12[i] <- substr(list.indiv.w12[i], 1, 2)
}

# make exploratory plot
plot.owin(w12.list[[1]])
for(i in 1:length(w12.list)){
  plot.owin(w12.list[[i]], add=T)
}


# dry 2013 loop

# read shapefiles from their directory, one for each season/year combination
setwd("~%set local path here%/data and code/INDIVIDUALES/TEMPORADAS/2013_DRY/CA")
list.indiv.d13 <- list.files(pattern="*.shp") 
indivs.d13.shps <- lapply(list.indiv.d13, read_sf)
# convert the individual polygons to owin objects, and cut the smoothed surface above with each one, checking by plotting that this is correct
for (i in 1:length(indivs.d13.shps)){
  a <- st_geometry(indivs.d13.shps[[i]])
  a <- as(a, "Spatial")
  a <- as.owin.SpatialPolygons(a[1], fatal = TRUE)
  assign(paste0("indiv.d13.", substr(list.indiv.d13[i], 1, 2)), a)
}

#  Construct list of objects wtih mget
d13.list <- mget(ls(pattern = "indiv.d13..."))

names.d13 <- array(NA, length(d13.list))
for (i in 1:length(d13.list)){
  names.d13[i] <- substr(list.indiv.d13[i], 1, 2)
}

# make exploratory plot
plot.owin(d13.list[[1]])
for(i in 1:length(d13.list)){
  plot.owin(d13.list[[i]], add=T)
}

# wet 2013 loop
# read shapefiles from their directory, one for each season/year combination
setwd("~%set local path here%/data and code/INDIVIDUALES/TEMPORADAS/2013_WET/CA")
list.indiv.w13 <- list.files(pattern="*.shp") 
indivs.w13.shps <- lapply(list.indiv.w13, read_sf)
# convert the individual polygons to owin objects, and cut the smoothed surface above with each one, checking by plotting that this is correct
for (i in 1:length(indivs.w13.shps)){
  a <- st_geometry(indivs.w13.shps[[i]])
  a <- as(a, "Spatial")
  a <- as.owin.SpatialPolygons(a[1], fatal = TRUE)
  assign(paste0("indiv.w13.", substr(list.indiv.w13[i], 1, 2)), a)
}

#  Construct list of objects wtih mget
w13.list <- mget(ls(pattern = "indiv.w13..."))
names.w13 <- array(NA, length(w13.list))
for (i in 1:length(w13.list)){
  names.w13[i] <- substr(list.indiv.w13[i], 1, 2)
}

# make exploratory plot
plot.owin(w13.list[[1]])
for(i in 1:length(w13.list)){
  plot.owin(w13.list[[i]], add=T)
}

# dry 2014 loop
# read shapefiles from their directory, one for each season/year combination
setwd("~%set local path here%/data and code/INDIVIDUALES/TEMPORADAS/2014_DRY/CA")
list.indiv.d14 <- list.files(pattern="*.shp") 
indivs.d14.shps <- lapply(list.indiv.d14, read_sf)
# convert the individual polygons to owin objects, and cut the smoothed surface above with each one, checking by plotting that this is correct
for (i in 1:length(indivs.d14.shps)){
  a <- st_geometry(indivs.d14.shps[[i]])
  a <- as(a, "Spatial")
  a <- as.owin.SpatialPolygons(a[1], fatal = TRUE)
  assign(paste0("indiv.d14.", substr(list.indiv.d14[i], 1, 2)), a)
}

#  Construct list of objects wtih mget
d14.list <- mget(ls(pattern = "indiv.d14..."))

names.d14 <- array(NA, length(d14.list))
for (i in 1:length(d14.list)){
  names.d14[i] <- substr(list.indiv.d14[i], 1, 2)
}

# make exploratory plot
plot.owin(d14.list[[1]])
for(i in 1:length(d14.list)){
  plot.owin(d14.list[[i]], add=T)
}

# wet 2014 loop
# read shapefiles from their directory, one for each season/year combination
setwd("~%set local path here%/data and code/INDIVIDUALES/TEMPORADAS/2014_WET/CA")
list.indiv.w14 <- list.files(pattern="*.shp") 
indivs.w14.shps <- lapply(list.indiv.w14, read_sf)
# convert the individual polygons to owin objects, and cut the smoothed surface above with each one, checking by plotting that this is correct
for (i in 1:length(indivs.w14.shps)){
  a <- st_geometry(indivs.w14.shps[[i]])
  a <- as(a, "Spatial")
  a <- as.owin.SpatialPolygons(a[1], fatal = TRUE)
  assign(paste0("indiv.w14.", substr(list.indiv.w14[i], 1, 2)), a)
}

#  Construct list of objects wtih mget
w14.list <- mget(ls(pattern = "indiv.w14..."))
names.w14 <- array(NA, length(w14.list))
for (i in 1:length(w14.list)){
  names.w14[i] <- substr(list.indiv.w14[i], 1, 2)
}

# make exploratory plot
plot.owin(w14.list[[1]])
for(i in 1:length(w14.list)){
  plot.owin(w14.list[[i]], add=T)
}

# dry 2015 loop
# read shapefiles from their directory, one for each season/year combination
setwd("~%set local path here%/data and code/INDIVIDUALES/TEMPORADAS/2015_DRY/CA")
list.indiv.d15 <- list.files(pattern="*.shp") 
indivs.d15.shps <- lapply(list.indiv.d15, read_sf)
# convert the individual polygons to owin objects, and cut the smoothed surface above with each one, checking by plotting that this is correct
for (i in 1:length(indivs.d15.shps)){
  a <- st_geometry(indivs.d15.shps[[i]])
  a <- as(a, "Spatial")
  a <- as.owin.SpatialPolygons(a[1], fatal = TRUE)
  assign(paste0("indiv.d15.", substr(list.indiv.d15[i], 1, 2)), a)
}

#  Construct list of objects wtih mget
d15.list <- mget(ls(pattern = "indiv.d15..."))

names.d15 <- array(NA, length(d15.list))
for (i in 1:length(d15.list)){
  names.d15[i] <- substr(list.indiv.d15[i], 1, 2)
}

# make exploratory plot
plot.owin(d15.list[[10]])
for(i in 1:length(d15.list)){
  plot.owin(d15.list[[i]], add=T)
}

# wet 2015 loop
# read shapefiles from their directory, one for each season/year combination
setwd("~%set local path here%/data and code/INDIVIDUALES/TEMPORADAS/2015_WET/CA")
list.indiv.w15 <- list.files(pattern="*.shp") 
indivs.w15.shps <- lapply(list.indiv.w15, read_sf)
# convert the individual polygons to owin objects, and cut the smoothed surface above with each one, checking by plotting that this is correct
for (i in 1:length(indivs.w15.shps)){
  a <- st_geometry(indivs.w15.shps[[i]])
  a <- as(a, "Spatial")
  a <- as.owin.SpatialPolygons(a[1], fatal = TRUE)
  assign(paste0("indiv.w15.", substr(list.indiv.w15[i], 1, 2)), a)
}

#  Construct list of objects wtih mget
w15.list <- mget(ls(pattern = "indiv.w15..."))
names.w15 <- array(NA, length(w15.list))
for (i in 1:length(w15.list)){
  names.w15[i] <- substr(list.indiv.w15[i], 1, 2)
}


# make exploratory plot
plot.owin(w15.list[[10]])
for(i in 1:length(w15.list)){
  plot.owin(w15.list[[i]], add=T)
}

# dry 2016 loop
# read shapefiles from their directory, one for each season/year combination
setwd("~%set local path here%/data and code/INDIVIDUALES/TEMPORADAS/2016_DRY/CA")
list.indiv.d16 <- list.files(pattern="*.shp") 
indivs.d16.shps <- lapply(list.indiv.d16, read_sf)
# convert the individual polygons to owin objects, and cut the smoothed surface above with each one, checking by plotting that this is correct
for (i in 1:length(indivs.d16.shps)){
  a <- st_geometry(indivs.d16.shps[[i]])
  a <- as(a, "Spatial")
  a <- as.owin.SpatialPolygons(a[1], fatal = TRUE)
  assign(paste0("indiv.d16.", substr(list.indiv.d16[i], 1, 2)), a)
}

#  Construct list of objects wtih mget
d16.list <- mget(ls(pattern = "indiv.d16..."))

names.d16 <- array(NA, length(d16.list))
for (i in 1:length(d16.list)){
  names.d16[i] <- substr(list.indiv.d16[i], 1, 2)
}

# make exploratory plot
plot.owin(d16.list[[10]])
for(i in 1:length(d16.list)){
  plot.owin(d16.list[[i]], add=T)
}

# wet 2016 loop
# read shapefiles from their directory, one for each season/year combination
setwd("~%set local path here%/data and code/INDIVIDUALES/TEMPORADAS/2016_WET/CA")
list.indiv.w16 <- list.files(pattern="*.shp") 
indivs.w16.shps <- lapply(list.indiv.w16, read_sf)
# convert the individual polygons to owin objects, and cut the smoothed surface above with each one, checking by plotting that this is correct
for (i in 1:length(indivs.w16.shps)){
  a <- st_geometry(indivs.w16.shps[[i]])
  a <- as(a, "Spatial")
  a <- as.owin.SpatialPolygons(a[1], fatal = TRUE)
  assign(paste0("indiv.w16.", substr(list.indiv.w16[i], 1, 2)), a)
}

#  Construct list of objects wtih mget
w16.list <- mget(ls(pattern = "indiv.w16..."))
names.w16 <- array(NA, length(w16.list))
for (i in 1:length(w16.list)){
  names.w16[i] <- substr(list.indiv.w16[i], 1, 2)
}

# make exploratory plot
plot.owin(w16.list[[10]])
for(i in 1:length(w16.list)){
  plot.owin(w16.list[[i]], add=T)
}

# dry 2017 loop
# read shapefiles from their directory, one for each season/year combination
setwd("~%set local path here%/data and code/INDIVIDUALES/TEMPORADAS/2017_DRY/CA")
list.indiv.d17 <- list.files(pattern="*.shp") 
indivs.d17.shps <- lapply(list.indiv.d17, read_sf)
# convert the individual polygons to owin objects, and cut the smoothed surface above with each one, checking by plotting that this is correct
for (i in 1:length(indivs.d17.shps)){
  a <- st_geometry(indivs.d17.shps[[i]])
  a <- as(a, "Spatial")
  a <- as.owin.SpatialPolygons(a[1], fatal = TRUE)
  assign(paste0("indiv.d17.", substr(list.indiv.d17[i], 1, 2)), a)
}

#  Construct list of objects wtih mget
d17.list <- mget(ls(pattern = "indiv.d17..."))

names.d17 <- array(NA, length(d17.list))
for (i in 1:length(d17.list)){
  names.d17[i] <- substr(list.indiv.d17[i], 1, 2)
}

# make exploratory plot
plot.owin(d17.list[[10]])
for(i in 1:length(d17.list)){
  plot.owin(d17.list[[i]], add=T)
}

# wet 2017 loop
# read shapefiles from their directory, one for each season/year combination
setwd("~%set local path here%/data and code/INDIVIDUALES/TEMPORADAS/2017_WET/CA")
list.indiv.w17 <- list.files(pattern="*.shp") 
indivs.w17.shps <- lapply(list.indiv.w17, read_sf)
# convert the individual polygons to owin objects, and cut the smoothed surface above with each one, checking by plotting that this is correct
for (i in 1:length(indivs.w17.shps)){
  a <- st_geometry(indivs.w17.shps[[i]])
  a <- as(a, "Spatial")
  a <- as.owin.SpatialPolygons(a[1], fatal = TRUE)
  assign(paste0("indiv.w17.", substr(list.indiv.w17[i], 1, 2)), a)
}

#  Construct list of objects wtih mget
w17.list <- mget(ls(pattern = "indiv.w17..."))
names.w17 <- array(NA, length(w17.list))
for (i in 1:length(w17.list)){
  names.w17[i] <- substr(list.indiv.w17[i], 1, 2)
}

# make exploratory plot
plot.owin(w17.list[[10]])
for(i in 1:length(w17.list)){
  plot.owin(w17.list[[i]], add=T)
}

### Get core ranges from lists 
ca.d12 <- array(NA)
for(i in 1:length(d12.list)){
  ca.d12[i] <- area(d12.list[[i]])/10000
}

ca.d13 <- array(NA)
for(i in 1:length(d13.list)){
  ca.d13[i] <- area(d13.list[[i]])/10000
}

ca.d14 <- array(NA)
for(i in 1:length(d14.list)){
  ca.d14[i] <- area(d14.list[[i]])/10000
}

ca.d15 <- array(NA)
for(i in 1:length(d15.list)){
  ca.d15[i] <- area(d15.list[[i]])/10000
}

ca.d16 <- array(NA)
for(i in 1:length(d16.list)){
  ca.d16[i] <- area(d16.list[[i]])/10000
}

ca.d17 <- array(NA)
for(i in 1:length(d17.list)){
  ca.d17[i] <- area(d17.list[[i]])/10000
}

ca.w12 <- array(NA)
for(i in 1:length(w12.list)){
  ca.w12[i] <- area(w12.list[[i]])/10000
}

ca.w13 <- array(NA)
for(i in 1:length(w13.list)){
  ca.w13[i] <- area(w13.list[[i]])/10000
}

ca.w14 <- array(NA)
for(i in 1:length(w14.list)){
  ca.w14[i] <- area(w14.list[[i]])/10000
}

ca.w15 <- array(NA)
for(i in 1:length(w15.list)){
  ca.w15[i] <- area(w15.list[[i]])/10000
}

ca.w16 <- array(NA)
for(i in 1:length(w16.list)){
  ca.w16[i] <- area(w16.list[[i]])/10000
}

ca.w17 <- array(NA)
for(i in 1:length(w17.list)){
  ca.w17[i] <- area(w17.list[[i]])/10000
}

## Place all into the same data frame
core.areas.dry <- c(ca.d12, ca.d13, ca.d14, ca.d15, ca.d16, ca.d17)
core.areas.wet <- c(ca.w12, ca.w13, ca.w14, ca.w15, ca.w16, ca.w17)
core.areas.names <- c(names.d12, names.d13, names.d14, names.d15, names.d16, names.d17,
                      names.w12, names.w13, names.w14, names.w15, names.w16, names.w17)

core.years <- c(rep("2012", length(ca.d12)), rep("2013", length(ca.d13)), rep("2014", length(ca.d14)),
                rep("2015", length(ca.d15)), rep("2016", length(ca.d16)), rep("2017", length(ca.d17)),
                rep("2012", length(ca.w12)), rep("2013", length(ca.w13)), rep("2014", length(ca.w14)),
                rep("2015", length(ca.w15)), rep("2016", length(ca.w16)), rep("2017", length(ca.w17)))
core.seasons <- c(rep("dry", length(core.areas.dry)), rep("wet", length(core.areas.wet)))
core.areas <- data.frame(core.areas.names, c(core.areas.dry, core.areas.wet), core.years, core.seasons)
colnames(core.areas) <- c("indiv", "area", "year", "season")

###### Extract intersections from shapefiles #####

setwd("~%set local path here%/data and code/")
i.d12.shp <- read_sf(dsn = "INTERSECTIONS", layer = "2012_DRY")
i.w12.shp <- read_sf(dsn = "INTERSECTIONS", layer = "2012_WET")
i.d13.shp <- read_sf(dsn = "INTERSECTIONS", layer = "2013_DRY")
i.w13.shp <- read_sf(dsn = "INTERSECTIONS", layer = "2013_WET")
i.d14.shp <- read_sf(dsn = "INTERSECTIONS", layer = "2014_DRY")
i.w14.shp <- read_sf(dsn = "INTERSECTIONS", layer = "2014_WET")
i.d15.shp <- read_sf(dsn = "INTERSECTIONS", layer = "2015_DRY")
i.w15.shp <- read_sf(dsn = "INTERSECTIONS", layer = "2015_WET")
i.d16.shp <- read_sf(dsn = "INTERSECTIONS", layer = "2016_DRY")
i.w16.shp <- read_sf(dsn = "INTERSECTIONS", layer = "2016_WET")
i.d17.shp <- read_sf(dsn = "INTERSECTIONS", layer = "2017_DRY")
i.w17.shp <- read_sf(dsn = "INTERSECTIONS", layer = "2017_WET")

p.d12 <- list()
a.d12 <- array()
w.d12 <- array()

for (i in 1:nrow(i.d12.shp)){
  # extract as character vectors the names of the individuals whose areas intersect in each polygon
  p.d12[i] <- regmatches(i.d12.shp$GP[i], gregexpr("[A-Z]+", i.d12.shp$GP[i]))
  # use those character vectors to calculate intersections and unions using the owin objects, and calculate their ratio
  a.d12[i] <- area(intersect.owin(as.solist(d12.list[grep(paste(p.d12[[i]], collapse="|"), names(d12.list))])))
  w.d12[i] <- 
    area(intersect.owin(as.solist(d12.list[grep(paste(p.d12[[i]], collapse="|"), names(d12.list))]))) /
    area(union.owin(as.solist(d12.list[grep(paste(p.d12[[i]], collapse="|"), names(d12.list))])))
}

p.w12 <- list()
a.w12 <- array()
w.w12 <- array()

for (i in 1:nrow(i.w12.shp)){
  # extract as character vectors the names of the individuals whose areas intersect in each polygon
  p.w12[i] <- regmatches(i.w12.shp$GP[i], gregexpr("[A-Z]+", i.w12.shp$GP[i]))
  # use those character vectors to calculate intersections and unions using the owin objects, and calculate their ratio
  a.w12[i] <- area(intersect.owin(as.solist(w12.list[grep(paste(p.w12[[i]], collapse="|"), names(w12.list))])))
  w.w12[i] <- 
    area(intersect.owin(as.solist(w12.list[grep(paste(p.w12[[i]], collapse="|"), names(w12.list))]))) /
    area(union.owin(as.solist(w12.list[grep(paste(p.w12[[i]], collapse="|"), names(w12.list))])))
}

hist(w.w12, breaks=10)


p.d13 <- list()
a.d13 <- array()
w.d13 <- array()

for (i in 1:nrow(i.d13.shp)){
  # extract as character vectors the names of the individuals whose areas intersect in each polygon
  p.d13[i] <- regmatches(i.d13.shp$GP[i], gregexpr("[A-Z]+", i.d13.shp$GP[i]))
  # use those character vectors to calculate intersections and unions using the owin objects, and calculate their ratio
  a.d13[i] <- area(intersect.owin(as.solist(d13.list[grep(paste(p.d13[[i]], collapse="|"), names(d13.list))])))
  w.d13[i] <- 
    area(intersect.owin(as.solist(d13.list[grep(paste(p.d13[[i]], collapse="|"), names(d13.list))]))) /
    area(union.owin(as.solist(d13.list[grep(paste(p.d13[[i]], collapse="|"), names(d13.list))])))
}

hist(w.d13, breaks=10)

p.w13 <- list()
a.w13 <- array()
w.w13 <- array()

for (i in 1:nrow(i.w13.shp)){
  # extract as character vectors the names of the individuals whose areas intersect in each polygon
  p.w13[i] <- regmatches(i.w13.shp$GP[i], gregexpr("[A-Z]+", i.w13.shp$GP[i]))
  # use those character vectors to calculate intersections and unions using the owin objects, and calculate their ratio
  a.w13[i] <- area(intersect.owin(as.solist(w13.list[grep(paste(p.w13[[i]], collapse="|"), names(w13.list))])))
  w.w13[i] <- 
    area(intersect.owin(as.solist(w13.list[grep(paste(p.w13[[i]], collapse="|"), names(w13.list))]))) /
    area(union.owin(as.solist(w13.list[grep(paste(p.w13[[i]], collapse="|"), names(w13.list))])))
}

hist(w.w13, breaks=10)

p.d14 <- list()
a.d14 <- array()
w.d14 <- array()

for (i in 1:nrow(i.d14.shp)){
  # extract as character vectors the names of the individuals whose areas intersect in each polygon
  p.d14[i] <- regmatches(i.d14.shp$GP[i], gregexpr("[A-Z]+", i.d14.shp$GP[i]))
  # use those character vectors to calculate intersections and unions using the owin objects, and calculate their ratio
  a.d14[i] <- area(intersect.owin(as.solist(d14.list[grep(paste(p.d14[[i]], collapse="|"), names(d14.list))])))
  w.d14[i] <- 
    area(intersect.owin(as.solist(d14.list[grep(paste(p.d14[[i]], collapse="|"), names(d14.list))]))) /
    area(union.owin(as.solist(d14.list[grep(paste(p.d14[[i]], collapse="|"), names(d14.list))])))
}

hist(w.d14, breaks=10)

p.w14 <- list()
a.w14 <- array()
w.w14 <- array()

for (i in 1:nrow(i.w14.shp)){
  # extract as character vectors the names of the individuals whose areas intersect in each polygon
  p.w14[i] <- regmatches(i.w14.shp$GP[i], gregexpr("[A-Z]+", i.w14.shp$GP[i]))
  # use those character vectors to calculate intersections and unions using the owin objects, and calculate their ratio
  a.w14[i] <- area(intersect.owin(as.solist(w14.list[grep(paste(p.w14[[i]], collapse="|"), names(w14.list))])))
  w.w14[i] <- 
    area(intersect.owin(as.solist(w14.list[grep(paste(p.w14[[i]], collapse="|"), names(w14.list))]))) /
    area(union.owin(as.solist(w14.list[grep(paste(p.w14[[i]], collapse="|"), names(w14.list))])))
}

hist(w.w14, breaks=10)

p.d15 <- list()
a.d15 <- array()
w.d15 <- array()

for (i in 1:nrow(i.d15.shp)){
  # extract as character vectors the names of the individuals whose areas intersect in each polygon
  p.d15[i] <- regmatches(i.d15.shp$GP[i], gregexpr("[A-Z]+", i.d15.shp$GP[i]))
  # use those character vectors to calculate intersections and unions using the owin objects, and calculate their ratio
  a.d15[i] <- area(intersect.owin(as.solist(d15.list[grep(paste(p.d15[[i]], collapse="|"), names(d15.list))])))
  w.d15[i] <- 
    area(intersect.owin(as.solist(d15.list[grep(paste(p.d15[[i]], collapse="|"), names(d15.list))]))) /
    area(union.owin(as.solist(d15.list[grep(paste(p.d15[[i]], collapse="|"), names(d15.list))])))
}

hist(w.d15, breaks=10)

p.w15 <- list()
a.w15 <- array()
w.w15 <- array()

for (i in 1:nrow(i.w15.shp)){
  # extract as character vectors the names of the individuals whose areas intersect in each polygon
  p.w15[i] <- regmatches(i.w15.shp$GP[i], gregexpr("[A-Z]+", i.w15.shp$GP[i]))
  # use those character vectors to calculate intersections and unions using the owin objects, and calculate their ratio
  a.w15[i] <- area(intersect.owin(as.solist(w15.list[grep(paste(p.w15[[i]], collapse="|"), names(w15.list))])))
  w.w15[i] <- 
    area(intersect.owin(as.solist(w15.list[grep(paste(p.w15[[i]], collapse="|"), names(w15.list))]))) /
    area(union.owin(as.solist(w15.list[grep(paste(p.w15[[i]], collapse="|"), names(w15.list))])))
}

hist(w.w15, breaks=10)

p.d16 <- list()
a.d16 <- array()
w.d16 <- array()

for (i in 1:nrow(i.d16.shp)){
  # extract as character vectors the names of the individuals whose areas intersect in each polygon
  p.d16[i] <- regmatches(i.d16.shp$GP[i], gregexpr("[A-Z]+", i.d16.shp$GP[i]))
  # use those character vectors to calculate intersections and unions using the owin objects, and calculate their ratio
  a.d16[i] <- area(intersect.owin(as.solist(d16.list[grep(paste(p.d16[[i]], collapse="|"), names(d16.list))])))
  w.d16[i] <- 
    area(intersect.owin(as.solist(d16.list[grep(paste(p.d16[[i]], collapse="|"), names(d16.list))]))) /
    area(union.owin(as.solist(d16.list[grep(paste(p.d16[[i]], collapse="|"), names(d16.list))])))
}

hist(w.w15, breaks=10)



p.w16 <- list()
a.w16 <- array()
w.w16 <- array()

for (i in 1:nrow(i.w16.shp)){
  # extract as character vectors the names of the individuals whose areas intersect in each polygon
  p.w16[i] <- regmatches(i.w16.shp$GP[i], gregexpr("[A-Z]+", i.w16.shp$GP[i]))
  # use those character vectors to calculate intersections and unions using the owin objects, and calculate their ratio
  a.w16[i] <- area(intersect.owin(as.solist(w16.list[grep(paste(p.w16[[i]], collapse="|"), names(w16.list))])))
  w.w16[i] <- 
    area(intersect.owin(as.solist(w16.list[grep(paste(p.w16[[i]], collapse="|"), names(w16.list))]))) /
    area(union.owin(as.solist(w16.list[grep(paste(p.w16[[i]], collapse="|"), names(w16.list))])))
}

hist(w.w16, breaks=10)


p.d17 <- list()
a.d17 <- array()
w.d17 <- array()

for (i in 1:nrow(i.d17.shp)){
  # extract as character vectors the names of the individuals whose areas intersect in each polygon
  p.d17[i] <- regmatches(i.d17.shp$GP[i], gregexpr("[A-Z]+", i.d17.shp$GP[i]))
  # use those character vectors to calculate intersections and unions using the owin objects, and calculate their ratio
  a.d17[i] <- area(intersect.owin(as.solist(d17.list[grep(paste(p.d17[[i]], collapse="|"), names(d17.list))])))
  w.d17[i] <- 
    area(intersect.owin(as.solist(d17.list[grep(paste(p.d17[[i]], collapse="|"), names(d17.list))]))) /
    area(union.owin(as.solist(d17.list[grep(paste(p.d17[[i]], collapse="|"), names(d17.list))])))
}

hist(w.d17, breaks=10)

p.w17 <- list()
a.w17 <- array()
w.w17 <- array()

for (i in 1:nrow(i.w17.shp)){
  # extract as character vectors the names of the individuals whose areas intersect in each polygon
  p.w17[i] <- regmatches(i.w17.shp$GP[i], gregexpr("[A-Z]+", i.w17.shp$GP[i]))
  # use those character vectors to calculate intersections and unions using the owin objects, and calculate their ratio
  a.w17[i] <- area(intersect.owin(as.solist(w17.list[grep(paste(p.w17[[i]], collapse="|"), names(w17.list))])))
  w.w17[i] <- 
    #these two work!!!
    area(intersect.owin(as.solist(w17.list[grep(paste(p.w17[[i]], collapse="|"), names(w17.list))]))) /
    area(union.owin(as.solist(w17.list[grep(paste(p.w17[[i]], collapse="|"), names(w17.list))])))
}

hist(w.w17, breaks=10)

###### WRITING OUT - DON'T RUN MORE THAN ONCE ##########
lapply(p.d12, write, "sets_d12.txt", append=TRUE, ncolumns=50)
lapply(p.w12, write, "sets_w12.txt", append=TRUE, ncolumns=50)
lapply(p.d13, write, "sets_d13.txt", append=TRUE, ncolumns=50)
lapply(p.w13, write, "sets_w13.txt", append=TRUE, ncolumns=50)
lapply(p.d14, write, "sets_d14.txt", append=TRUE, ncolumns=50)
lapply(p.w14, write, "sets_w14.txt", append=TRUE, ncolumns=50)
lapply(p.d15, write, "sets_d15.txt", append=TRUE, ncolumns=50)
lapply(p.w15, write, "sets_w15.txt", append=TRUE, ncolumns=50)
lapply(p.d16, write, "sets_d16.txt", append=TRUE, ncolumns=50)
lapply(p.w16, write, "sets_w16.txt", append=TRUE, ncolumns=50)
lapply(p.d17, write, "sets_d17.txt", append=TRUE, ncolumns=50)
lapply(p.w17, write, "sets_w17.txt", append=TRUE, ncolumns=50)

write.table(a.d12, "area_d12.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(a.w12, "area_w12.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(a.d13, "area_d13.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(a.w13, "area_w13.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(a.d14, "area_d14.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(a.w14, "area_w14.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(a.d15, "area_d15.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(a.w15, "area_w15.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(a.d16, "area_d16.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(a.w16, "area_w16.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(a.d17, "area_d17.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(a.w17, "area_w17.txt", dec=".", row.names=FALSE, col.names=FALSE)

write.table(w.d12, "w_d12.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(w.w12, "w_w12.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(w.d13, "w_d13.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(w.w13, "w_w13.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(w.d14, "w_d14.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(w.w14, "w_w14.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(w.d15, "w_d15.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(w.w15, "w_w15.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(w.d16, "w_d16.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(w.w16, "w_w16.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(w.d17, "w_d17.txt", dec=".", row.names=FALSE, col.names=FALSE)
write.table(w.w17, "w_w17.txt", dec=".", row.names=FALSE, col.names=FALSE)

######### GRAPHICS ###########
n.d12 <- lapply(p.d12, length)
n.w12 <- lapply(p.w12, length)
n.d13 <- lapply(p.d13, length)
n.w13 <- lapply(p.w13, length)
n.d14 <- lapply(p.d14, length)
n.w14 <- lapply(p.w14, length)
n.d15 <- lapply(p.d15, length)
n.w15 <- lapply(p.w15, length)
n.d16 <- lapply(p.d16, length)
n.w16 <- lapply(p.w16, length)
n.d17 <- lapply(p.d17, length)
n.w17 <- lapply(p.w17, length)

## Read file with ranges for the bounding box: important for scale
l.xyrange <- read.csv("%set local path here%/data and code/largest_xyranges.csv")
l.xrange <- l.xyrange$l.xrange
l.yrange <- l.xyrange$l.yrange

### Figure 2
par(mfrow=c(2,6), mar=c(0.01,0.01,0.01,0.01))
plot(boundingbox.owin(bounding.box.xy(l.xrange, l.yrange)), lty=0, main="2012")
for(i in 1:length(d12.list)){
  plot.owin(d12.list[[i]], add=T, lwd=1, col=adjustcolor(i, alpha.f=0.2))
}
plot(boundingbox.owin(bounding.box.xy(l.xrange, l.yrange)), lty=0, main="2013")
for(i in 1:length(d13.list)){
  plot.owin(d13.list[[i]], add=T, lwd=1, col=adjustcolor(i, alpha.f=0.2))
}
plot(boundingbox.owin(bounding.box.xy(l.xrange, l.yrange)), lty=0, main="2014")
for(i in 1:length(d14.list)){
  plot.owin(d14.list[[i]], add=T, lwd=1, col=adjustcolor(i, alpha.f=0.2))
}
plot(boundingbox.owin(bounding.box.xy(l.xrange, l.yrange)), lty=0, main="2015")
for(i in 1:length(d15.list)){
  plot.owin(d15.list[[i]], add=T, lwd=1, col=adjustcolor(i, alpha.f=0.2))
}
plot(boundingbox.owin(bounding.box.xy(l.xrange, l.yrange)), lty=0, main="2016")
for(i in 1:length(d16.list)){
  plot.owin(d16.list[[i]], add=T, lwd=1, col=adjustcolor(i, alpha.f=0.2))
}
plot(boundingbox.owin(bounding.box.xy(l.xrange, l.yrange)), lty=0, main="2017")
for(i in 1:length(d17.list)){
  plot.owin(d17.list[[i]], add=T, lwd=1, col=adjustcolor(i, alpha.f=0.2))
}
plot(boundingbox.owin(bounding.box.xy(l.xrange, l.yrange)), lty=0, main="")
for(i in 1:length(w12.list)){
  plot.owin(w12.list[[i]], add=T, lwd=1, col=adjustcolor(i, alpha.f=0.2))
}
plot(boundingbox.owin(bounding.box.xy(l.xrange, l.yrange)), lty=0, main="")
for(i in 1:length(w13.list)){
  plot.owin(w13.list[[i]], add=T, lwd=1, col=adjustcolor(i, alpha.f=0.2))
}
plot(boundingbox.owin(bounding.box.xy(l.xrange, l.yrange)), lty=0, main="")
for(i in 1:length(w14.list)){
  plot.owin(w14.list[[i]], add=T, lwd=1, col=adjustcolor(i, alpha.f=0.2))
}
plot(boundingbox.owin(bounding.box.xy(l.xrange, l.yrange)), lty=0, main="")
for(i in 1:length(w15.list)){
  plot.owin(w15.list[[i]], add=T, lwd=1, col=adjustcolor(i, alpha.f=0.2))
}
plot(boundingbox.owin(bounding.box.xy(l.xrange, l.yrange)), lty=0, main="")
for(i in 1:length(w16.list)){
  plot.owin(w16.list[[i]], add=T, lwd=1, col=adjustcolor(i, alpha.f=0.2))
}
plot(boundingbox.owin(bounding.box.xy(l.xrange, l.yrange)), lty=0, main="")
for(i in 1:length(w17.list)){
  plot.owin(w17.list[[i]], add=T, lwd=1, col=adjustcolor(i, alpha.f=0.2))
}


## define colour-blind friendly colour combination
col.dry <- rgb(red=0.8, green=0.475, blue=0.655, alpha=0.3)
col.wet <- rgb(red=0, green=0.62, blue=0.45, alpha=0.3)

### Figure 3
par(mfrow=c(2,6), mar=c(1,1,1,1))
hist(a.d12/10000, main="2012", col = col.dry, xlab="area (ha)", xlim=c(1,100))
hist(a.d13/10000, main="2013", col = col.dry, xlab="area (ha)", xlim=c(1,100))
hist(a.d14/10000, main="2014", col = col.dry, xlab="area (ha)", xlim=c(1,100))
hist(a.d15/10000, main="2015", col = col.dry, xlab="area (ha)", xlim=c(1,100))
hist(a.d16/10000, main="2016", col = col.dry, xlab="area (ha)", xlim=c(1,100))
hist(a.d17/10000, main="2017", col = col.dry, xlab="area (ha)", xlim=c(1,100))
hist(a.w12/10000, main="", col = col.wet, xlab="area (ha)", xlim=c(1,100))
hist(a.w13/10000, main="", col = col.wet, xlab="area (ha)", xlim=c(1,100))
hist(a.w14/10000, main="", col = col.wet, xlab="area (ha)", xlim=c(1,100))
hist(a.w15/10000, main="", col = col.wet, xlab="area (ha)", xlim=c(1,100))
hist(a.w16/10000, main="", col = col.wet, xlab="area (ha)", xlim=c(1,100))
hist(a.w17/10000, main="", col = col.wet, xlab="area (ha)", xlim=c(1,100))

### Figure 3
par(mfrow=c(1,1), mar=c(5,4,4,2), cex.axis=1)
ridgeline(core.areas$area, paste0(core.areas$year, core.areas$season), palette=c(col.dry, col.wet), border=c(col.dry, col.wet), bw="nrd0", 
          labels = c("2012", "", "2013", "", "2014", "", "2015", "", "2016", "", "2017", ""))

## Statistical test on the graph above
model <- aov(area ~ factor(year) + factor(season) + factor(year)*factor(season), data = core.areas)
summary(model)

#### Figure 4
par(mfrow=c(2,6), mar=c(1.85,2,1.2,1), cex.axis=1.1, cex=1.2)
plot(n.d12, w.d12, pch=16, col = col.dry, xlim=c(1,25), ylim=c(0.05,1))
lines(1:24, 1/((1:24)+1), col = "magenta", lty = 2, lwd=1)
plot(n.d13, w.d13, pch=16, col = col.dry, xlim=c(1,25), ylim=c(0.05,1))
lines(1:24, 1/((1:24)+1), col = "magenta", lty = 2, lwd=1)
plot(n.d14, w.d14, pch=16, col = col.dry, xlim=c(1,25), ylim=c(0.05,1))
lines(1:24, 1/((1:24)+1), col = "magenta", lty = 2, lwd=1)
plot(n.d15, w.d15, pch=16, col = col.dry, xlim=c(1,25), ylim=c(0.05,1))
lines(1:24, 1/((1:24)+1), col = "magenta", lty = 2, lwd=1)
plot(n.d16, w.d16, pch=16, col = col.dry, xlim=c(1,25), ylim=c(0.05,1))
lines(1:24, 1/((1:24)+1), col = "magenta", lty = 2, lwd=1)
plot(n.d17, w.d17, pch=16, col = col.dry, xlim=c(1,25), ylim=c(0.05,1))
lines(1:24, 1/((1:24)+1), col = "magenta", lty = 2, lwd=1)
plot(n.w12, w.w12, pch=16, col = col.wet, xlim=c(1,25), ylim=c(0.05,1))
lines(1:24, 1/((1:24)+1), col = "darkgreen", lty = 2, lwd=1)
plot(n.w13, w.w13, pch=16, col = col.wet, xlim=c(1,25), ylim=c(0.05,1))
lines(1:24, 1/((1:24)+1), col = "darkgreen", lty = 2, lwd=1)
plot(n.w14, w.w14, pch=16, col = col.wet, xlim=c(1,25), ylim=c(0.05,1))
lines(1:24, 1/((1:24)+1), col = "darkgreen", lty = 2, lwd=1)
plot(n.w15, w.w15, pch=16, col = col.wet, xlim=c(1,25), ylim=c(0.05,1))
lines(1:24, 1/((1:24)+1), col = "darkgreen", lty = 2, lwd=1)
plot(n.w16, w.w16, pch=16, col = col.wet, xlim=c(1,25), ylim=c(0.05,1))
lines(1:24, 1/((1:24)+1), col = "darkgreen", lty = 2, lwd=1)
plot(n.w17, w.w17, pch=16, col = col.wet, xlim=c(1,25), ylim=c(0.05,1))
lines(1:24, 1/((1:24)+1), col = "darkgreen", lty = 2, lwd=1)




d.unions <- array(NA, 6)
d.unions[1] <- area(union.owin(as.solist(d12.list)))/10000
d.unions[2] <- area(union.owin(as.solist(d13.list)))/10000
d.unions[3] <- area(union.owin(as.solist(d14.list)))/10000
d.unions[4] <- area(union.owin(as.solist(d15.list)))/10000
d.unions[5] <- area(union.owin(as.solist(d16.list)))/10000
d.unions[6] <- area(union.owin(as.solist(d17.list)))/10000
w.unions <- array(NA, 6)
w.unions[1] <- area(union.owin(as.solist(w12.list)))/10000
w.unions[2] <- area(union.owin(as.solist(w13.list)))/10000
w.unions[3] <- area(union.owin(as.solist(w14.list)))/10000
w.unions[4] <- area(union.owin(as.solist(w15.list)))/10000
w.unions[5] <- area(union.owin(as.solist(w16.list)))/10000
w.unions[6] <- area(union.owin(as.solist(w17.list)))/10000

years <- c("2012", "2013", "2014", "2015", "2016", "2017")
d.n <- array(NA, 6)
d.n[1] <- max(lengths(p.d12))
d.n[2] <- max(lengths(p.d13))
d.n[3] <- max(lengths(p.d14))
d.n[4] <- max(lengths(p.d15))
d.n[5] <- max(lengths(p.d16))
d.n[6] <- max(lengths(p.d17))
w.n <- array(NA, 6)
w.n[1] <- max(lengths(p.w12))
w.n[2] <- max(lengths(p.w13))
w.n[3] <- max(lengths(p.w14))
w.n[4] <- max(lengths(p.w15))
w.n[5] <- max(lengths(p.w16))
w.n[6] <- max(lengths(p.w17))


## Read data on fruit abundance
ifa <- read.csv("%set local path here%/data and code/SEASONAL_IFA.CSV")
ifa$year <- substr(ifa$k, 1, 4)
ifa$season <- tolower(substr(ifa$k, 6, 8))
ifa <- ifa[6:17,]

plot(ifa$mean_ifa_dbh_den/max(ifa$mean_ifa_dbh_den), ylim=c(0,1), xlab="", ylab="Index of fruit abundance", xaxt="n", type="l", lty=1, pch=19)
axis(1, at = 1:length(levels(as.factor(ifa$k))), las = 2, xlab="", labels = levels(as.factor(ifa$k)))

# Merge based on two common columns
core.areas.ifa <- merge(core.areas, ifa, by = c("year", "season"))

plot(core.areas.ifa$cv_ifa_dbh_den, core.areas$area)
model4 <- glm(area   ~  mean_ifa_dbh_den + 1/indiv, data=core.areas.ifa)
summary(model4)

boxplot(core.areas.ifa$cv_ifa_dbh_den    ~  core.areas.ifa$season)

## Read data on filtration complementarity index
cm <- read.csv("%set local path here%/data and code/complexity_scaling_only_CCs.csv")
cm$season <- rep(c("dry","wet"),6)
cm$year <- c("2012", "2012", "2013", "2013", "2014", "2014", "2015", "2015", "2016", "2016", "2017", "2017")
cm$mean.ifa <- ifa$mean_ifa_dbh_den
cm$cv.ifa <- ifa$cv_ifa_dbh_den
plot(cm)
boxplot(cm$Weighted.index..only.CCs.scaled ~ cm$season)
plot(cm$mean.ifa, cm$Weighted.index..only.CCs.scaled, col=c(col.dry, col.wet),  cex=1.5, pch=19)
model7 <- aov(Weighted.index..only.CCs.scaled ~ cv.ifa, data=cm)
summary(model7)

# Figure SI1
par(mfrow=c(1,1))
plot(cm$cv.ifa, cm$Weighted.index..only.CCs.scaled, col=c(col.dry, col.wet),
     cex=1.5, pch=19, xlab="Variation in fruit abundance index", 
     ylab="Filtration complementarity index")
lmodel1 <- lm(cm$Weighted.index..only.CCs.scaled ~ cm$cv.ifa)
summary(lmodel)
abline(a=coef(lmodel1)[1], b=coef(lmodel1)[2], lty=2)
