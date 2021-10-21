# Simple script analysing the Australian weather data

library("tidyverse")

# Read in the data

df = read_csv("data/weatherAUS.csv")

# Create a scatter plot of Humidity9am and Temp9am
# a location

city = "Sydney"

scatter_plot = 
df %>%
  filter(Location == city) %>%
  ggplot(aes(x = Temp9am, y = Humidity9am, color = "purple")) + 
  geom_point() +
  labs(title = paste("Temperature vs Humidity for", city)) +
  ylab("Humidity") +
  xlab("Temperature") +
  theme_minimal()

# Save the plot in graphics/
ggsave(filename = "graphics/scatter-temp-humidity.png", plot = scatter_plot)
