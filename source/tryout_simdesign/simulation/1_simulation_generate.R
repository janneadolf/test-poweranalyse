#-------------------------------------------------------------------

### Define essential simulation functions

Generate <- function(condition, fixed_objects) {
    SimDesign::GenerateIf(TRUE)
    dat <- rnorm(n = condition$N, mean = 0.3 , sd = 1) |>
      as.data.frame()
    # Return a vector, matrix, data.frame, or list
    return(dat)
}

#-------------------------------------------------------------------
