# Load the mtcars dataset
data(mtcars)

# Set up the plotting area to display 3 plots in one row
par(mfrow = c(1, 3))

# Plot histogram with default bin width
hist(mtcars$mpg, 
     main = "Histogram of mpg (Default Bin Width)",
     xlab = "Miles per Gallon (mpg)",
     col = "lightblue",
     border = "black")

# Plot histogram with larger bin width
hist(mtcars$mpg, 
     breaks = 5,  # Number of bins
     main = "Histogram of mpg (5 Bins)",
     xlab = "Miles per Gallon (mpg)",
     col = "lightgreen",
     border = "black")

# Plot histogram with smaller bin width
hist(mtcars$mpg, 
     breaks = 20,  # Number of bins
     main = "Histogram of mpg (20 Bins)",
     xlab = "Miles per Gallon (mpg)",
     col = "lightcoral",
     border = "black")

# Reset the plotting area to default
par(mfrow = c(1, 1))
