library(ggplot2)

df <- read.csv("C:\\Users\\hp\\Downloads\\oreos.csv")

head(df)

summary(df)

model <- lm(Sales ~ Height.in.Feet, data = df)
print(model)

summary(model)

new_heights <- data.frame(Height.in.Feet = c(30, 50, 70))
predictions <- predict(model, new_heights)

predictions

#Visualisations
ggplot(df, aes(x = Height.in.Feet, y = Sales)) +
  geom_point() +
  labs(title = "Sales vs Shelf Height",
       x = "Shelf Height (in cm)",
       y = "Sales (units)")

ggplot(df, aes(x = Height.in.Feet, y = Sales)) +
  geom_point() +
  geom_smooth(method = "lm", color = "blue") +
  labs(title = "Sales vs Shelf Height with Regression Line",
       x = "Shelf Height (in cm)",
       y = "Sales (units)")
names(new_heights)