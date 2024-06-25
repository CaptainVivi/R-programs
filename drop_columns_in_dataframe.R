# Create a sample dataframe
data <- data.frame(
  ID = 1:5,
  Name = c("Anna", "Brian", "Myron", "Kyle", "Eva"),
  Age = c(25, 30, 35, 40, 45),
  Gender = c("F", "M", "M", "M", "F"),
  Salary = c(50000, 60000, 70000, 80000, 90000)
)

# Print the original dataframe
cat("Original Dataframe:\n")
print(data)

# Drop the 'Age' and 'Salary' columns
data_dropped <- data[, !(names(data) %in% c("Age", "Salary"))]

# Print the dataframe after dropping columns
cat("\nDataframe after dropping 'Age' and 'Salary' columns:\n")
print(data_dropped)
