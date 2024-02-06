# NP Data Viz Customization Solutions

# Load data
# https://github.com/melaniewalsh/Neat-Datasets/raw/main/1979-2020-National-Park-Visits-By-State.csv

np_data <- read.csv("https://github.com/melaniewalsh/Neat-Datasets/raw/main/1979-2020-National-Park-Visits-By-State.csv", stringsAsFactors = FALSE)

# Install relevant libraries
install.packages("scales")

# Load relevant libraries
library("scales")
library("dplyr")
library("ggplot2")

# Exercise 1: You're going to compare the recreation visits over time for at least 2 National Parks
# Explore np_data and pick at least 2 NPs that would be interesting to compare
# Filter the data for those 2 or more NPs
my_parks <- np_data %>%
  filter(ParkName %in% c("Arches NP", "Badlands NP")) 

# Exercise 2: Make a line plot of your 2 or more NPs, and color the lines by the names of the park
# See what the plot looks like before you turn off scientific notation, and then turn off scientific notation by uncommenting and running the line below
# options(scipen = 999)
ggplot(my_parks) +
  geom_line(aes(x = Year, y = RecreationVisits, color = ParkName))

# Exercise 3: Make a line plot of your 2 or more NPs, and color the lines by the names of the park
# Additionally, choose a new color palette
# Possible color palettes: https://r-graph-gallery.com/38-rcolorbrewers-palettes.html 
# Also, add a significant, attention-grabbing title and legible x, y axes labels
ggplot(my_parks) +
  geom_line(aes(x = Year, y = RecreationVisits, color = ParkName)) +
  scale_color_brewer(palette = "Set2") +
  labs(title = "Arches Overtakes the Badlands in the 21st Century", x = "Year", y = "Number of Visits")


# Exercise 4: Make a line plot of your 2 or more NPs, and color the lines by the names of the park
# Additionally, choose a new color palette
# Also, add a significant, attention-grabbing title and legible x, y axes labels
# Finally, format the x tick labels so that they appear every 5 years, and change the y axis to abbreviated thousands (k) and millions (m)
ggplot(my_parks) +
  geom_line(aes(x = Year, y = RecreationVisits, color = ParkName)) +
  scale_color_brewer(palette = "Set2") +
  labs(title = "Arches Overtakes the Badlands in the 21st Century", x = "Year", y = "Number of Visits") +
  scale_x_continuous(breaks = seq(1980, 2020, 5)) +
  scale_y_continuous(labels = label_number_si())


# When you're done, export the plot as an image file and paste it into the Discord channel custom-np-data
