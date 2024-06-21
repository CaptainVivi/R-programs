# Define the file path of the existing CSV file
file_path <- "D:/vijayasri/my_dataframe.csv"

# Read the existing CSV file into a dataframe
existing_dataframe <- read.csv(file_path)

# Print the existing dataframe
cat("Existing Dataframe:\n")
print(existing_dataframe)

# Define the new row to be added as a dataframe
new_row <- data.frame(
  Numbers = 60,
  Names1 = "Faye",
  Logical = FALSE,
  Values = 60.5
)

# Append the new row to the existing dataframe
updated_dataframe <- rbind(existing_dataframe, new_row)

# Write the updated dataframe back to the CSV file
write.csv(updated_dataframe, file = "D:/vijayasri/my_dataframe.csv", row.names = FALSE)

# Print a message indicating that the new row has been added
cat("New row has been appended to the file 'my_dataframe.csv'.\n")

# Read and display the updated CSV file
updated_dataframe <- read.csv(file_path)
cat("Updated Dataframe:\n")
print(updated_dataframe)
