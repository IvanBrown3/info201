# Mapping Number of Visits by State - Choropleth Map Solutions

# Install maps package
install.packages("maps")

# Load libraries
library("ggplot2")
library("plotly")
library("dplyr")

# Load data
np_data <- read.csv("https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/1979-2020-National-Park-Visits-By-State.csv", stringsAsFactors = FALSE)

# Load state shapefile
state_shape <- map_data("state")

# Add full (lowercased) state name to np_data, matching on state abbreviation
np_data <- np_data %>% 
  mutate(state_fullname =
           tolower(state.name[match(State, state.abb)]))

# The code below will match any state abbreviation to the state name
#state.name[match("AZ", state.abb)]

# Make a new dataframe of the total recreation visits for each state (by full name)
np_state_data <- np_data  %>%  
  group_by(state_fullname) %>% 
  summarize(state_total = sum(RecreationVisits))

# Join the `state_shape` and `np_state_data` dataframes as
# np_state_shape_data
np_state_shape_data <- left_join(state_shape, 
                                 np_state_data,
                                 by = c("region" = "state_fullname"))

# Make a choropleth map of total recreation visits by state
ggplot(np_state_shape_data) +
  geom_polygon(mapping = aes(x = long, 
                             y = lat, 
                             group = group, 
                             fill = state_total)) +
  coord_map() +
  labs(title = 'National Park Visits 2020', fill = 'Visits')

# Make a choropleth map of total recreation visits by state
# Add custom colors
# Add abbreviation for millions
library("scales")
?label_number_si()

ggplot(np_state_shape_data) +
  geom_polygon(mapping = aes(x = long, 
                             y = lat, 
                             group = group, 
                             fill = state_total)) +
  scale_fill_continuous(low = 'yellow',
                        high ='red', 
                        # Abbreviate numbers with millions as M
                        labels = label_number_si()) +
  coord_map() +
  labs(title = 'National Park Visits 2020', fill = 'Visits')