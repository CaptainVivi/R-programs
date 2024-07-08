# Load ggplot2 package (install it if not already installed)
library(ggplot2)

# Load airquality dataset (it's built-in in R)
data(airquality)

# Check the structure of the airquality dataset
str(airquality)

# Create temperature ranges as categories
# Assuming temperature ranges: Low (<= 70), Medium (71-80), High (> 80)
airquality$temp_range <- cut(airquality$Temp, breaks = c(-Inf, 70, 80, Inf),
                             labels = c("Low", "Medium", "High"), right = FALSE)

# Convert Month to a factor with ordered levels for proper ordering in plots
airquality$Month <- factor(airquality$Month, levels = 5:9, labels = c("May", "June", "July", "August", "September"))

# Create a box plot of Ozone levels grouped by Month and colored by temperature range
ggplot(airquality, aes(x = Month, y = Ozone, fill = temp_range)) +
  geom_boxplot(alpha = 0.8) +  # Add box plot with transparency
  labs(title = "Box Plot of Ozone Levels Grouped by Month",
       x = "Month", y = "Ozone Levels",
       fill = "Temperature Range") +
  scale_fill_manual(values = c("Low" = "blue", "Medium" = "green", "High" = "red")) +  # Custom color palette
  theme_minimal()