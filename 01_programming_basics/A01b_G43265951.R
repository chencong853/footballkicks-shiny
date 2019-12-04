# Assignment 1 Spring 2019 
# Cong Chen
# G43265951

# Part B
# Create a data frame
setwd("~/Desktop/DNSC_6211_Programming_for_Analytics/Week01-ProgrammingBasics/assignment_1")
mycities <- read.csv(file = "cities.csv")

# Insert values
mycities[5, 2] <- 0.7
mycities[5, 3] <- FALSE

# Create a new column
mycities$state <- c("NY", "CA", "IL", "TX", "DC")

# Export
write.csv(mycities, file = "mycities.csv")
