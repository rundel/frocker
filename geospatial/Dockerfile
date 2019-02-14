FROM openblasr/tidyverse

RUN dnf update -y \
  && dnf install -y \
    geos-devel \
    gdal-devel \
    proj-devel proj-nad proj-epsg \
    udunits2-devel \
    cairo-devel \
    netcdf-devel \
  && install2.r --error \
    proj4 \
    raster \
    rasterVis \
    stars \
    rgdal \
    rgeos \
    sf \
    sp \
    spdep \
    RColorBrewer \
    fields \
    RandomFields \
    mapdata \
    maptools \
    mapview \
    spatstat \
    geoR \
    geosphere \
    spBayes \
    leaflet \
    leaflet.extras
