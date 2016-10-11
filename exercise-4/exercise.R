# Exercise 4: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function
data("USPersonalExpenditure")

# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame("USPersonalExpenditure")

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme

# Create a new variable by passing the USPersonalExpenditure to the data.frame function
spending <- data.frame(USSpending = USPersonalExpenditure)

# What are the column names of your dataframe?
colnames(spending)

# Why are they so strange?


# What are the row names of your dataframe?
rownames(spending)
row
# Create a column `category` that is equal to your rownames
spending$category <- row.names(spending)

# How much money was spent on personal care in 1940?
personalCare.1940 <- spending["Personal Care", "USSpending.1940"]

# How much money was spent on Food and Tobacco in 1960
foodAndTobacco.1960 <- spending["Food and Tobacco", "USSpending.1960"]

# What was the highest expenditure category in 1960?
highest.1960 <- max(spending[, "USSpending.1960"])

### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year

highest <- function(year) {
  return (row.name(max(spending[, "USSpending.1960"])))
}

# Using your function, determine the highest spending category of each year
highest(1960)

# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
