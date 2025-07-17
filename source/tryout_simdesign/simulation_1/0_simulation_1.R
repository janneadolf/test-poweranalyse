#' --- 
#' title: "Simulation title"
#' output:
#'   html_document:
#'     theme: readable
#'     code_download: true
#' ---


#-------------------------------------------------------------------

library(SimDesign)

### Define design conditions
Design <- createDesign(factor1 = NA,
                       factor2 = NA)

### Source in essential functions
# setwd("source/tryout_simdesign/simulation_1")
source("simulation_1-generate.R")
source("simulation_1-analyse.R")
source("simulation_1-summarise.R")
source("simulation_1-extras.R")


### Run the simulation
res <- runSimulation(design=Design, replications=2,
                     generate=list(G1=Generate.G1, G2=Generate.G2), 
                     analyse=list(A1=Analyse.A1, A2=Analyse.A2), 
                     summarise=Summarise)
res

