factorial_recursive <- function(n) {
  if (n == 0 || n == 1) {
    return(1)
  } else {
    return(n * factorial_recursive(n - 1))
  }
}


num <- as.integer(readline(prompt = "Enter a number to calculate its factorial: "))


if (num < 0) {
  cat("Factorial is not defined for negative numbers.\n")
} else {
  result <- factorial_recursive(num)
  cat("Factorial of", num, "is:", result, "\n")
}
