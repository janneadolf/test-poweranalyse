#-------------------------------------------------------------------

### Define essential simulation functions
Summarise <- function(condition, results, fixed_objects) {
    sumres <- SimDesign::EDR(p = results, alpha = 0.05, unname = FALSE)
    # Return a named vector of results
    return(sumres)
}

#-------------------------------------------------------------------

