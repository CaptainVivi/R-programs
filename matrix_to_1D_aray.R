# Define a matrix
my_matrix <- matrix(1:9, nrow = 3, ncol = 3)
cat("Original Matrix:\n")
print(my_matrix)

# Convert the matrix to a 1-dimensional array using as.vector()
one_d_array_vector <- as.vector(my_matrix)
cat("\n1-Dimensional Array (using as.vector()):\n")
print(one_d_array_vector)

# Convert the matrix to a 1-dimensional array using as.array()
one_d_array <- as.array(my_matrix)
dim(one_d_array) <- NULL  # Ensuring it is a 1-dimensional array
cat("\n1-Dimensional Array (using as.array()):\n")
print(one_d_array)
