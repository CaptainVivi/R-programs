fibonacci <- function(n) {
  fib <- numeric(n)
  fib[1] <- 0
  fib[2] <- 1
  for (i in 3:n) {
    fib[i] <- fib[i-1] + fib[i-2]
  }
  return(fib)
}


num_terms <- 20  
fib_series <- fibonacci(num_terms)
cat("Fibonacci series up to", num_terms, "terms:", fib_series)

