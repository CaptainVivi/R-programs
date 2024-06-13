#sum of 2 numbers
s <- function(m,n){
  c <-m+n
  print(c)
}

s(3,4)
s(7,9)

#return keyword
o <- function(x){
  return(5 * x)
}

print(o(3))
print(o(59))
print(o(7))

#nested function
nf <- function(x,y){
  a <- x+y
  return(a)
}
nf(nf(5,5), nf(8,9))