# Define the number for which the multiplication table is required
number <- 6

# Define the range of the multiplication table
range <- 10  # You can adjust this to change the range of the table

# Print the header
cat("Multiplication table for", number, ":\n")

# Generate and print the multiplication table
for (i in 1:range) {
  result <- number * i
  cat(number, "x", i, "=", result, "\n")
}
