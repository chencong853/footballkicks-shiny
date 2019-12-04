# Part A

milesTokm <- function(distInmiles) {
  distInkm <- distInmiles * 1.60934
  s <- sprintf('%.2f miles is %.2f kilometers', distInmiles,distInkm)
  return(s)
  }

inchesTocm <- function(distIninches) {
  distIncm <- distIninches * 2.54
  s <- sprintf('%.2f inches is %.2f centimeters', distIninches, distIncm)
  return(s)
}

# Part B
mycities <- read.csv('https://s3.amazonaws.com/programmingforanalytics/cities.csv')

mycities[5,'population'] <- 0.7
mycities[5,'coastal'] <- FALSE

mycities$state <- c('NY', 'CA', 'IL', 'TX', 'DC')

write.csv(mycities, file = 'mycities.csv')

# Part C
myfriends <- function(name, height, dist){
  heightIncm <- height * 2.54
  distInkm <- dist * 1.60934
  s <- sprintf('My friend %s is %.1f centimeters tall and walked %.1f kilometers', name, heightIncm, distInkm)
  return(s)
  }
