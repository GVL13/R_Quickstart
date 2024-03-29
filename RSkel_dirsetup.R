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
