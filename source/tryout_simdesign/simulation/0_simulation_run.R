### Define design conditions
Design <- SimDesign::createDesign(
  N = seq(100, 300, by = 50)
  )

### Source in essential functions
source("source/tryout_simdesign/simulation/1_simulation_generate.R")
source("source/tryout_simdesign/simulation/2_simulation_analyse.R")
source("source/tryout_simdesign/simulation/3_simulation_summarise.R")


### Run the simulation
res <- SimDesign::runSimulation(
  design = Design, 
  replications = 100,
  generate = Generate, 
  analyse = Analyse, 
  summarise = Summarise
  )

# Run simulation without summarize
res <- SimDesign::runSimulation(
  design = Design, 
  replications = 100,
  generate = Generate, 
  analyse = Analyse, 
  summarise = NA,
  save_results = TRUE,
  control = list(save_seeds = TRUE),
  save_details = list(
    out_rootdir = "source/tryout_simdesign/simulation",
    # folder "run1" should exist, "results" or "seeds" should not
    save_results_dirname = "run1/results",
    save_seeds_dirname = "run1/seeds"
    )
  
)
