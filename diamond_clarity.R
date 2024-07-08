# Load the diamonds dataset using ggplot2 (for data loading only)
library(ggplot2)
data(diamonds)

# Calculate frequencies of clarity categories
clarity_counts <- table(diamonds$clarity)

# Convert to data frame
clarity_df <- as.data.frame(clarity_counts)
names(clarity_df) <- c("clarity", "count")

# Create a color palette
colors <- c("lightblue", "lightgreen", "lightcoral", "lightsalmon", "lightpink", "lightcyan")

# Increase the size of the plotting device
par(mar = rep(0, 4))  # Adjust margins to make room for the larger plot
dev.new(width = 10, height = 8)  # Open a new plotting window with specified size

# Create the pie chart with increased size
pie(clarity_df$count, labels = clarity_df$clarity, col = colors,
    main = "Pie Chart of Diamond Clarity Categories", cex = 1.5)  # Increase cex for larger labels

