# R_Quickstart
A quick way to get organized, reproducible R analyses up and running.

By Greg van Lunteren || Last updated: 2019-11-04

### Prerequisites:
- R
- Rstudio
- Git


### Setup:
1. First create an RStudio project using File -> New Project -> New Directory -> New Project. Using the Project format is extremely helpful for keeping any analysis organized, verison controlled, and reproducible.
    a. Name it and put it wherever you want locally
    a. Make sure to select "Create a git repository" and "Use Packrat with this project"

2. Next run these commands to pull down the standard R project skeleton:

` install.packages('usethis') `

` usethis::use_course('https://github.com/GVL13/R_Quickstart/blob/master/R_SKELETON.zip',destdir = getwd()) `


3. Quick load in packages, run the following code and follow the prompts (based on what type of analysis you're doing):

`source("~/setup/packages.R")`




### Directory Scheme:
- __code__ -- All R code should go in the 'code' folder
- __data__ -- Any source data should live in the 'data' folder (.csv, .xlsx, shapefiles, SQLite DBs, etc)
- __output__ --Output data and visualizations (ie: images, pdfs, word docs) should live in the 'output' folder
- __documentation__ -- Data dictionaries, request emails, to-do lists, and other documentation should go in the 'documentation' folder


### Version Control
- Using git allows you to track your project and keeps track of versions and changes. Commit often and push up to our Azure repository (our equiv of github).
- If you're not familiar with git or need a refresher, use this: https://r-bio.github.io/intro-git-rstudio/
- Our team's repository is here: https://__________.visualstudio.com. You may need to request access.
- Go and create a new project there, and add the url as a remote repo


