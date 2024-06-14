num1 <- function(x){ #outer function
  num2 <- function(y){ #inner function
    return(x*y)
  }
  return(num2)
}
result <- num1(10)
print(result)
print(result(5))
