# Assignment 1 Spring 2019 
# Cong Chen
# G43265951

# Part A
# Create a function that converts miles to km
milesTokm <- function(distInmiles) {
  distInkm <- distInmiles / 0.62137
  distInkm <- sprintf(distInkm, fmt = "%.2f") 
  result <- paste(distInmiles, "miles is", distInkm, "kilometers", sep = " ")
  return(result)
}

# Create a function that converts inches to cm
inchesTocm <- function(distIninches) {
  distIncm <- distIninches * 2.54
  distIncm <- sprintf(distIncm, fmt = "%.2f")
  result <- paste(distIninches, "inches is", distIncm, "centimeters", sep = " ")
  return(result)
}





