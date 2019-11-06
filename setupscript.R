# Creating folder structure
folderlist <- c('code','data','documentation','output','setup')

for(i in folderlist) {dir.create(path = sprintf('%s/%s',getwd(),i))}

print("Folder directory created.")

# Creates .gitignore file
gitignore <- ("# don't track the data folder--it'll probably be big and will change
data/

# History files
.Rhistory
.Rapp.history

# Session Data files
.RData

# Example code in package build process
*-Ex.R

# Output files from R CMD build
/*.tar.gz

# Output files from R CMD check
/*.Rcheck/

# RStudio files
.Rproj.user/

# produced vignettes
vignettes/*.html
vignettes/*.pdf

# OAuth2 token, see https://github.com/hadley/httr/releases/tag/v0.3
.httr-oauth

# knitr and R markdown default cache directories
/*_cache/
/cache/

# Temporary files created by R markdown
*.utf8.md
*.knit.md

# Shiny token, see https://shiny.rstudio.com/articles/shinyapps.html
rsconnect/")

fileConn<-file(".gitignore")
writeLines(c(gitignore), fileConn)
close(fileConn)
print(".gitignore file updated")

require(pacman) || install.packages("pacman")

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
