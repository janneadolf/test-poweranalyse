# initialize renv
renv::init()
#
# Enable the INBO universe
options(
  repos = c(
    inbo = "https://inbo.r-universe.dev", CRAN = "https://cloud.r-project.org"
  )
)
#
# install checklist
install.packages("checklist")
#
# set-up project
checklist::setup_project("path to project folder here")
#
# install INBOtheme
install.packages("INBOtheme")
#
# install INBOmd
install.packages("INBOmd")
#
# write renv lockfile
renv::snapshot()
#
# author information can be adapted manually via
# C:\Users\janne_adolf\AppData\Roaming\R\data\R\checklist
