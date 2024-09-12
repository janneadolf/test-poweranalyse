# initialize renv
renv::init()

# install checklist
options(
  repos = c(
    inbo = "https://inbo.r-universe.dev", CRAN = "https://cloud.r-project.org"
  )
)
install.packages("checklist")

# write renv lockfile
renv::snapshot()

# set-up project
checklist::setup_project("C:/Users/janne_adolf/github/test-poweranalyse")