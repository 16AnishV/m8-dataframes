# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks have scored in each game this season (google "Seahawks")
points <- c(10, 3, 37, 27)

# Create a vector of the number of points the Seahwaks have allowed to be scored against them in each game this season
points.allowed <- c(12, 9, 18, 17)

# Combine your two vectors into a dataframe
data <- data.frame(points, points.allowed)

# Create a new column "diff" that is the difference in points
data$diff <- data$points - data$points.allowed
# data[["diff"]] <- (abs(points-points.allowed))

# Create a new column "won" which is TRUE if the Seahawks wom
data[["won"]] <- c(TRUE, FALSE, TRUE, TRUE)

# Create a vector of the opponents
opponents <- c("Dolphins", "Rams", "49ers", "Jets")

# Assign your dataframe rownames of their opponents
row.names(data) <- opponents

