# Load the mtcars dataset
data(mtcars)

# Create a column for car brands by extracting the first word from the row names
mtcars$brand <- sapply(strsplit(rownames(mtcars), " "), "[", 1)

# Create a frequency table of car brands
brand_freq <- table(mtcars$brand)

# Create the bar plot
barplot(brand_freq, 
        main = "Frequency of Car Brands in mtcars Dataset",
        xlab = "Car Brand", 
        ylab = "Frequency", 
        col = "steelblue", 
        las = 2)
