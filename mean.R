# Define the file path of the existing CSV file
file_path <- "D:/vijayasri/my_dataframe.csv"

# Read the existing CSV file into a dataframe
dataframe <- read.csv(file_path)

# Print the dataframe to verify its contents
cat("Dataframe:\n")
print(dataframe)

# Calculate the mean of the Values column
mean_values <- mean(dataframe$Values, na.rm = TRUE)

# Print the mean of the Values column
cat("The mean of the Values column is:", mean_values, "\n")
