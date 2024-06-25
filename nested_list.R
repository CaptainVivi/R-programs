# Create a vector
my_vector <- c(1, 2, 3, 4, 5)

# Create a matrix
my_matrix <- matrix(1:9, nrow = 3, ncol = 3)

# Create a nested list
my_nested_list <- list(
  sub_string = "Nested Hello",
  sub_number = 99
)

# Create the main list containing the vector, matrix, and nested list
my_list <- list(
  vector = my_vector,
  matrix = my_matrix,
  nested_list = my_nested_list
)

# Give names to the elements in the main list
names(my_list) <- c("Vector Element", "Matrix Element", "Nested List Element")

# Print the entire list
print(my_list)

# Accessing each element of the main list
cat("Vector Element:\n")
print(my_list$`Vector Element`)

cat("\nMatrix Element:\n")
print(my_list$`Matrix Element`)

cat("\nNested List Element:\n")
print(my_list$`Nested List Element`)
