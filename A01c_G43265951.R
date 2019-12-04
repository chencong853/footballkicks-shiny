# Assignment 1 Spring 2019 
# Cong Chen
# G43265951

# Part C

# Functions - milesTokm and inchesTokm 
# Create a function that converts miles to km
milesTokm <- function(distInmiles) {
  distInkm <- distInmiles / 0.62137
  distInkm <- sprintf(distInkm, fmt = "%.1f") 
  return(distInkm)
}

# Create a function that converts inches to cm
inchesTocm <- function(distIninches) {
  distIncm <- distIninches * 2.54
  distIncm <- sprintf(distIncm, fmt = "%.1f")
  return(distIncm)
}


# Function - myFriends
myFriends <- function(name, heightIninches, distInmiles) {
  name <- substitute(name)
  heightIncm <- inchesTocm(heightIninches)
  distInkm <- milesTokm(distInmiles)
  result <- paste("My friend", name, "is", heightIncm, "centimeters tall and walked", distInkm, "kilometers", sep = " ")
  return(result)
}


