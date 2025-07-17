# generate skeleton for simulation_1
SimDesign::SimFunctions(
  filename = "simulation_1",
  dir = "source/tryout_simdesign/simulation", # not working
  save_structure = "all",
  extra_file = TRUE,
  nAnalyses = 2,
  nGenerate = 2,
  summarise = TRUE,
  comments = TRUE,
  openFiles = FALSE, # otherwise files opened in separate R Studio sessions
  spin_header = FALSE, 
  # spin documents: https://bookdown.org/yihui/rmarkdown-cookbook/spin.html
  SimSolve = FALSE
)
