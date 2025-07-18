#-------------------------------------------------------------------

### Define essential simulation functions

Analyse <- function(condition, dat, fixed_objects) {
  testout <- t.test(dat)
  pvalue <- testout$p.value
  # Return a named vector or list
  out <- SimDesign::nc(pvalue = pvalue)
  return(out)
}


#-------------------------------------------------------------------

