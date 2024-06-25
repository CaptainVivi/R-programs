# Define two vectors
vector1 <- 1:9
vector2 <- 10:18

# Combine the vectors into an array
my_array <- array(c(vector1, vector2), dim = c(3, 3, 2))

# Print the resulting array
cat("Array of two 3x3 matrices:\n")
print(my_array)

# Print each matrix individually
cat("\nFirst 3x3 matrix:\n")
print(my_array[,,1])

cat("\nSecond 3x3 matrix:\n")
print(my_array[,,2])
