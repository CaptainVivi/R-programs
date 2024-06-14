#usage of which() function
#usage 1
# Example vector
vector <- c(3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5)

# Using which() to find indices of even numbers
even_indices <- which(vector %% 2 == 0)

# Printing the result
cat("Indices of even numbers in the vector:", even_indices, "\n")

#usage 2
# Example vector
vec <- c(10, 15, 10, 20, 25, 10, 30)

# Using which() to find indices of the value 10
value_indices <- which(vec == 10)

# Printing the result
cat("Indices of the value 10 in the vector:", value_indices, "\n")

#usage 3
# Example vector with missing values
v <- c(1, 2, NA, 4, NA, 6)

# Using which() to find indices of NA values
na_indices <- which(is.na(v))

# Printing the result
cat("Indices of NA values in the vector:", na_indices, "\n")
