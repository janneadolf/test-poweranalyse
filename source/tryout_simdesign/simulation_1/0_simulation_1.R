### Define design conditions
Design <- SimDesign::createDesign(
  factor1 = NA,
  factor2 = NA
  )

### Source in essential functions
source("source/tryout_simdesign/simulation_1/1_simulation_1-generate.R")
source("source/tryout_simdesign/simulation_1/2_simulation_1-analyse.R")
source("source/tryout_simdesign/simulation_1/3_simulation_1-summarise.R")
source("source/tryout_simdesign/simulation_1/4_simulation_1-extras.R")


### Run the simulation
res <- SimDesign::runSimulation(
  design = Design, 
  replications = 2,
  generate = list(G1 = Generate.G1, G2 = Generate.G2), 
  analyse = list(A1 = Analyse.A1, A2 = Analyse.A2), 
  summarise = Summarise)
res

