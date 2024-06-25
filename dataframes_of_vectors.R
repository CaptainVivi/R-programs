# Define four vectors
vector1 <- c("Ali", "Bobby", "Chad", "Duke", "Ethan")
vector2 <- 1:5
vector3 <- c(TRUE, FALSE, TRUE, TRUE, FALSE)
vector4 <- c(10.5, 20.5, 30.5, 40.5, 50.5)

# Create a dataframe from the vectors
my_dataframe <- data.frame(
  Names = vector1,
  Numbers = vector2,
  Logical = vector3,
  Values = vector4
)

# Print the dataframe
print(my_dataframe)
