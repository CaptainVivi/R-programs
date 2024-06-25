# Create the first dataframe
dataframe1 <- data.frame(
  ID = 1:3,
  Name = c("Ayden", "Brianna", "Chad"),
  Age = c(25, 30, 35)
)

# Create the second dataframe
dataframe2 <- data.frame(
  ID = 4:6,
  Name = c("Danny", "Eva", "Farhaan"),
  Age = c(40, 45, 50)
)

# Create the third dataframe
dataframe3 <- data.frame(
  ID = 7:9,
  Name = c("Greta", "Harry", "Ivy"),
  Age = c(55, 60, 65)
)

# Combine the dataframes into a list
list_of_dataframes <- list(
  df1 = dataframe1,
  df2 = dataframe2,
  df3 = dataframe3
)

# Print the list of dataframes
cat("List of Dataframes:\n")
print(list_of_dataframes)

# Accessing individual dataframes
cat("\nFirst Dataframe (df1):\n")
print(list_of_dataframes$df1)

cat("\nSecond Dataframe (df2):\n")
print(list_of_dataframes$df2)

cat("\nThird Dataframe (df3):\n")
print(list_of_dataframes$df3)
