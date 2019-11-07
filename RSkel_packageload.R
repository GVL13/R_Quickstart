install.packages("pacman")
require(pacman)

# Inspired by http://drivendata.github.io/cookiecutter-data-science/#getting-started

PACKAGES <- function(General = FALSE,DB = FALSE, WebScrape = FALSE,ML=FALSE,SPATIAL=FALSE,DATASETS=FALSE,PERFORM=FALSE) 
  
{
  # General use packages
  if(General==TRUE) {
    p_load(
      tidyverse,
      lubridate,
      reshape2,
      readxl,
      jsonlite,
      RColorBrewer,
      openxlsx,
      here,
      tictoc)
  }
  
  DB <- as.logical(readline(prompt="Install database packages? (TRUE/FALSE)"))  
  # Databases
  if(DB==TRUE) { 
    p_load(dbi,
           rodbc,
           odbc,
           dbplyr)
  }
  
  WebScrape <- as.logical(readline(prompt="Install webscraping packages? (TRUE/FALSE)"))
  # Web Scraping
  if(WebScrape==TRUE) {
    p_load(rvest)
  }
  
  ML <- as.logical(readline(prompt="Install Machine Learning packages? (TRUE/FALSE)"))
  # Machine Learning
  if(ML==TRUE) {
    p_load(tidymodels,
           parsnip,
           rsample,
           remote,
           prodlim)
    print("Select 1 to update everything") # include "remote" package above
    require(tune) || remotes::install_github("tidymodels/tune") # Is sometimes broken
  }
  
  SPATIAL <- as.logical(readline(prompt="Install spatial packages? (TRUE/FALSE)"))
  # Spatial
  if(SPATIAL==TRUE) { 
    p_load(sf,
           leaflet,
           rpostgis,
           mapsapi)
    # mapsapi connects to the google maps API and free tier gives you 40,000 route distance/time calculations (need API key)
  }
  
  DATASETS <- as.logical(readline(prompt="Install census datasets package? (TRUE/FALSE)"))
  # Datasets
  if(DATASETS==TRUE) {
    p_load(tidycensus)
  }
  
  PERFORM <- as.logical(readline(prompt="Install performance/optimization packages? (TRUE/FALSE)"))
  # Performance and Optimization
  if(PERFORM==TRUE) {
    p_load(data.table,
           profvis,
           styler)
  }
}

PACKAGES()