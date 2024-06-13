of <- function(x){
  inf <- function(y){
    a <- x+y
    print(x)
    print(y)
    return(a)
  }
  return (inf)
}

output <- of(60000)
output(1000)