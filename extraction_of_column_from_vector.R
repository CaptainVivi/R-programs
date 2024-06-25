# Create a sample dataframe
data <- data.frame(
  ID = 1:5,
  Name = c("Ali", "Bobby", "Charlie", "Dylan", "Eva"),
  Age = c(25, 30, 35, 40, 45),
  Gender = c("F", "M", "M", "M", "F"),
  Salary = c(50000, 60000, 70000, 80000, 90000)
)

# Print the original dataframe
cat("Original Dataframe:\n")
print(data)

# Extract specific column by name
column_name <- "Age"  # Specify the column name
specific_column <- data[[column_name]]

# Print the extracted column
cat("\nExtracted Column '", column_name, "':\n", sep = "")
print(specific_column)
