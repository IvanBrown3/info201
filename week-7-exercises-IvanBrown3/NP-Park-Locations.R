# Mapping National Park Locations Solutions

# Install maps package
install.packages("maps")

# Load libraries
library("ggplot2")
library("plotly")
library("dplyr")

# Load National Park location data
# https://github.com/melaniewalsh/Neat-Datasets/raw/main/National-Park-Locations.csv
park_locations <- read.csv("https://github.com/melaniewalsh/Neat-Datasets/raw/main/National-Park-Locations.csv", stringsAsFactors = FALSE)

# Load state shapefile
state_shape <- map_data("state")
#world_shape <- map_data("world")

# Create a base map
ggplot(data = state_shape) +
  geom_polygon(aes(x = long,
                   y = lat,
                   group = group)) +
  coord_map()

# Exercise 1: Map every National Park on top of state map, and change the color of the points
# Hint: longitude and latitude should be your x, y values...
ggplot(data = state_shape) +
  geom_polygon(aes(x = long, 
                   y = lat, 
                   group = group)) +
  # Map National Park locations as points
  geom_point(data = park_locations,
             aes(x = long,
                 y = lat),  
             color = "red") +
  coord_map() 


# Map every National Park with clean, blank theme

# To make a blank them, you can create custom theme like so, and then add it to the bottom of your ggplot
# Try it out!
blank_theme <- theme_bw() +
  theme(
    axis.line = element_blank(), # remove axis lines
    axis.text = element_blank(), # remove axis labels
    axis.ticks = element_blank(), # remove axis ticks
    axis.title = element_blank(), # remove axis titles
    plot.background = element_blank(), # remove gray background
    panel.grid.major = element_blank(), # remove major grid lines
    panel.grid.minor = element_blank(), # remove minor grid lines
    panel.border = element_blank(), # remove border around plot
  )