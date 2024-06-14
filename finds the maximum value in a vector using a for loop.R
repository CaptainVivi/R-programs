#finding the maximum value in a vector using a for loop
find_max <- function(vec) {
  
  max_val <- vec[1]
  
  
  for (i in 2:length(vec)) {
    if (vec[i] > max_val) {
      max_val <- vec[i]
    }
  }
  
  return(max_val)
}


vector <- c(3, 1, 4, 7, 5, 9, 2, 6, 8, 3, 5)
max_value <- find_max(vector)
cat("The maximum value in the vector is:", max_value, "\n")
