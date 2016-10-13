# Exercise 7: Husky Football 2015 Season
# Read in the Husky Football 2015 game data into a variable called `husky.games.2015`
husky.games.2015 <- read.csv('data/huskies_2015.csv')
# Create a vector of the teams that the Huskies played against during that season
# Call this vector `not.huskies`. You'll need to convert this column to a vector
not.huskies <- c("Boise State", "Sacramento State", "Utah State", "California", "Southern California", "Oregon", "Stanford", "Arizona", "Utah", "Arizona State", "Oregon State", "Washington State", "Southern Mississippi")
is.data.frame(not.huskies)
not.huskies <- data.frame(not.huskies)
is.data.frame(not.huskies)

# Create a vector of the their final scores for the games
# Call this variable `husky.scores`
husky.scores <- c(13, 49, 31, 24, 17, 20, 14, 49, 23, 23, 52, 45, 44)

# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed
rushing.yards <- c(29, 218, 74, 107, 135, 180, 113, 201, 124, 142, 271, 240, 296)
passing.yards <- c(150, 326, 368, 152, 164, 205, 118, 267, 257, 405, 211, 203, 284)
  
# Create a variabled called `combined.yards` that is the total yardage of the Huskies for each game
combined.yards <- rushing.yards + passing.yards

# What is the score of the game where the Huskies had the most combined yards?
not.huskies$husky.scores <- husky.scores
not.huskies$rushing.yards <- rushing.yards
not.huskies$passing.yards <- passing.yards
not.huskies$combined.yards <- combined.yards

max(not.huskies$combined.yards)

# Write a function `MostYardsScore` that takes in a dataframe parameter `games` and returns a descriptive sentence
# about the game that was played that had the most yards scored in it.
# Take note of the steps from above including the opposing team, score, and date the game was played

# What was the highest yardage game so far this season?
# Hint: Read in the dataset titled `huskies_2016.csv` and save it as a variable
