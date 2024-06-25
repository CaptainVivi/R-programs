# Create a sample dataframe with NA values
data <- data.frame(
  ID = c(1, 2, NA, 4, 5),
  Name = c("Reed", NA, "Charlie", "Lance", "Jenna"),
  Age = c(25, 30, NA, 40, NA),
  Salary = c(50000, 60000, NA, NA, 90000)
)

# Print the original dataframe
cat("Original Dataframe:\n")
print(data)

# Replace NA values with 3
data[is.na(data)] <- 3

# Print the dataframe after replacing NA values
cat("\nDataframe after replacing NA values with 3:\n")
print(data)
