# Exploring visits to National Parks through data

# Load the data from the following URL
# https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/1979-2020-National-Park-Visits-By-State.csv
# Save as np_data
np_data <- read.csv("https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/1979-2020-National-Park-Visits-By-State.csv", stringsAsFactors = FALSE)

# Add a new column "park_state" to the dataframe that combines the name of each National Park and the state in which it is located like so
# Olympic NP, WA
np_data <- np_data %>% 
  mutate(park_state = paste0(ParkName, ", ", State))

# What is the single greatest number of Recreation Visits for any National Park in any year?
# Save this filtered row as max_visits_row
max_visits_row <- np_data %>% 
  filter(RecreationVisits == max(RecreationVisits)) 

# Now "pull" only the max number of visits and save as max_visits
max_visits <- np_data %>% 
  filter(RecreationVisits == max(RecreationVisits)) %>% pull(RecreationVisits)

# What is the lowest number of Recreation Visits for any National Park in any year?
# Save this filtered row as min_visits_row
min_visits_row <- np_data %>% 
  filter(RecreationVisits == min(RecreationVisits)) 

# Now "pull" only the max number of visits and save as min_visits
min_visits <- np_data %>% 
  filter(RecreationVisits == min(RecreationVisits)) %>%
  pull(RecreationVisits)

# Which National Parks have the lowest number of visits?
# What do you think explains this number or this pattern?


####### A Question That We Can't Quite Answer Yet...

# What is the average number of visits for each National Park from 1979-2020?
# Save as avg_visits
# NOTE: You probably won't be able to answer this question without a new DPLYR concept, but make your best effort and try to identify what steps are missing
avg_visits <- np_data %>% 
  group_by(ParkName) %>% 
  summarize(avg_visits = mean(RecreationVisits))