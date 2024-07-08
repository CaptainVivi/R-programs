# Load the Titanic dataset (if not already loaded)
# data(Titanic)  # Uncomment this line if Titanic is not already loaded

# Convert the Titanic dataset to a data frame
Titanic_df <- as.data.frame(Titanic)

# Calculate total number of passengers and survivors
total_passengers <- sum(Titanic_df$Freq)
total_survivors <- sum(Titanic_df[Titanic_df$Survived == "Yes", ]$Freq)

# Calculate proportions
prop_survived <- total_survivors / total_passengers
prop_not_survived <- 1 - prop_survived

# Calculate proportions by class
class_counts <- aggregate(Freq ~ Class, data = Titanic_df, sum)
class_counts$prop <- class_counts$Freq / total_passengers

# Create a layout for side-by-side plots
par(mfrow = c(1, 2))

# Plot 1: Pie chart for Survived vs. Not Survived
pie(c(prop_survived, prop_not_survived),
    labels = c("Survived", "Not Survived"),
    col = c("lightblue", "salmon"),
    main = "Survivors vs. Non-survivors",
    clockwise = TRUE)

# Plot 2: Pie chart for passenger class proportions
pie(class_counts$prop,
    labels = paste(class_counts$Class, "Class"),
    col = rainbow(length(class_counts$Class)),
    main = "Passenger Class Proportions",
    clockwise = TRUE)

# Reset plotting parameters
par(mfrow = c(1, 1))