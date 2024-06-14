# Function to check if a number is odd or even
check_odd_or_even <- function(number) {
  if (number %% 2 == 0) {
    return(paste(number, "is even"))
  } else {
    return(paste(number, "is odd"))
  }
}

# Example usage
number <- as.numeric(readline(prompt="Enter a number: "))
result <- check_odd_or_even(number)
print(result)
