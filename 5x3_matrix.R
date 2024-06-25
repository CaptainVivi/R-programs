# Generate a sequence of even integers greater than 50
even_integers <- seq(from = 52, by = 2, length.out = 15)

# Create a 5x3 array from the sequence
my_array <- array(even_integers, dim = c(5, 3))

# Print the resulting array
cat("5x3 array of even integers greater than 50:\n")
print(my_array)
