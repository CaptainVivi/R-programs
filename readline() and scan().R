# Demonstrate readline() function
cat("Enter your name: ")
name <- readline()

cat("Enter your age: ")
age <- as.integer(readline())

cat("\nUsing readline() function:\n")
cat("Your name is:", name, "\n")
cat("Your age is:", age, "\n\n")

# Demonstrate scan() function
cat("Enter two numbers separated by space: ")
numbers <- scan(n = 2)

cat("\nUsing scan() function:\n")
cat("First number entered:", numbers[1], "\n")
cat("Second number entered:", numbers[2], "\n")
