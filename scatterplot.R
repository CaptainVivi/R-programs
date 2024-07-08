# Load the iris dataset
data(iris)

# Assign colors to species
species_colors <- c("setosa" = "red", "versicolor" = "green", "virginica" = "blue")
colors <- species_colors[iris$Species]

# Create the scatter plot
plot(iris$Sepal.Length, iris$Sepal.Width,
     col = colors,
     pch = 19, 
     main = "Sepal Length vs. Sepal Width by Species",
     xlab = "Sepal Length",
     ylab = "Sepal Width")

# Add legend
legend("topright", legend = levels(iris$Species), col = species_colors, pch = 19)
