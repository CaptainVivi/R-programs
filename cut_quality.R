# Load necessary libraries
library(ggplot2)

# Load the diamonds dataset
data(diamonds)

# Create the plot
ggplot(diamonds, aes(x = cut, y = price)) +
  geom_boxplot(outlier.shape = NA, fill = "lightblue", color = "black") +
  geom_jitter(alpha = 0.5, color = "black", size = 0.5) +
  labs(title = "Price by Cut Quality", x = "Cut Quality", y = "Price") +
  theme_minimal()
