# Create a sample dataframe
data <- data.frame(
  ID = c(1, 3, 2, 5, 4),
  Name = c("Alice", "Bob", "Charlie", "David", "Eva"),
  Age = c(25, 30, 35, 30, 45),
  Salary = c(50000, 60000, 70000, 60000, 90000)
)

# Print the original dataframe
cat("Original Dataframe:\n")
print(data)

# Sort the dataframe by multiple columns using order()
sorted_data <- data[order(data$Age, data$Salary, decreasing = c(FALSE, TRUE)), ]

# Print the sorted dataframe
cat("\nSorted Dataframe by Age (ascending) and Salary (descending):\n")
print(sorted_data)
