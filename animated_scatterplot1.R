install.packages("gapminder")
install.packages("ggplot2")
install.packages("gganimate")
install.packages("dplyr")
install.packages("gifski")  # Required for rendering animations
install.packages("png")     # Required for rendering animations

library(gapminder)
library(ggplot2)
library(gganimate)
library(dplyr)

data(gapminder)

# Select required variables
gapminder_data <- gapminder %>%
  select(country, year, continent, gdpPercap, lifeExp, pop) %>%
  filter(!is.na(gdpPercap), !is.na(lifeExp))  # Remove NA values if any

# Convert continent to factor for categorical coloring
gapminder_data$continent <- factor(gapminder_data$continent)

# Create animated scatter plot
animated_plot <- ggplot(gapminder_data, aes(x = gdpPercap, y = lifeExp, size = pop, color = continent)) +
  geom_point(alpha = 0.7) +
  scale_size_continuous(range = c(1, 15)) +  # Adjust size range as needed
  scale_x_log10() +  # Use log scale for GDP per capita for better visualization
  labs(title = "GDP per Capita vs. Life Expectancy by Continent",
       x = "GDP per Capita (log scale)",
       y = "Life Expectancy",
       color = "Continent",
       size = "Population",
       caption = 'Year: {frame_time}') +
  transition_time(year) +
  ease_aes('linear') +
  theme_minimal()

# Render and display the animation
animate(animated_plot, nframes = 200, fps = 10, width = 800, height = 600, renderer = gifski_renderer())
