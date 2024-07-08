# Load ggplot2 package for accessing mpg dataset
library(ggplot2)
# Load mpg dataset from ggplot2
data(mpg)
# Extract highway and city mpg data
highway_mpg <- mpg$hwy
city_mpg <- mpg$cty


# Create comparative histogram with slanted labels

hist(highway_mpg, col = rgb(0, 0, 1, 0.5), xlim = c(10,
                                                    50), ylim = c(0, 40),
     main =
       "Comparative Histogram of Highway and City MPG",
     
     xlab =
       "MPG",
  
     ylab =
       "Frequency",
  
     breaks = 20,
     
     border =
       "white",
  
     las = 2)  # Set las = 2 for slanted labels on x-axis

hist(city_mpg, col = rgb(1, 0, 0, 0.5), add = TRUE,
     breaks = 20,
     
     
     las = 2)  # Set las = 2 for slanted labels on x-axis


# Add a legend


legend("topright", legend = c("Highway
MPG", "City MPG"),
       
       fill =
         c(rgb(0, 0, 1, 0.5), rgb(1, 0, 0, 0.5)))