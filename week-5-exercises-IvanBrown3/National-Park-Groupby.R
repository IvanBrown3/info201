# Load the data
np_data <- read.csv("https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/1979-2020-National-Park-Visits-By-State.csv ")

# Find the average number of visits for each state
# Save as avg_state_visits and View()
# What state has the most and least average visits?
# What patterns or surprises do you notice?
avg_state_visits <- np_data %>% 
  group_by(State) %>% 
  summarize(avg_visits = mean(RecreationVisits))

View(avg_state_visits)

# Find the average number of visits for each National Park AND state
# Save as avg_park_visits and View()
# What National Park has the most and least average visits?
# What patterns or surprises do you notice?
avg_park_visits <- np_data %>% 
  group_by(ParkName, State) %>% 
  summarize(avg_visits = mean(RecreationVisits))

View(avg_park_visits)

# Find the number of distinct parks for each state
# Save as distinct_parks
# Which state has the most national parks?
# What patterns or surprises do you notice?
distinct_parks <- np_data %>% 
  group_by(State) %>% 
  summarize(distinct_parks = n_distinct(ParkName))