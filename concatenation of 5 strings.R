string1 <- "Hello"
string2 <- ", "
string3 <- "world"
string4 <- "!"
string5 <- " How are you?"


c <- paste(string1, string2, string3, string4, string5)


cat("Concatenated string:", c, "\n")

cat("Length of the concatenated string:", nchar(c))


