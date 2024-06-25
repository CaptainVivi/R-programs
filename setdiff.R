# Define the first list
list1 <- list(1, 2, 3, 4, 5, "A", "B", TRUE, FALSE)

# Define the second list
list2 <- list(3, 4, 5, "A", "C", FALSE)

# Convert the lists to vectors for set operations
vector1 <- unlist(list1)
vector2 <- unlist(list2)

# Find elements in list1 that are not in list2
result <- setdiff(vector1, vector2)

# Print the result
cat("Elements in list1 that are not in list2:\n")
print(result)
