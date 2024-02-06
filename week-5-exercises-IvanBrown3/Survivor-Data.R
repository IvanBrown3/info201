# Exploring the TV show Survivor through data

# Load the data from the following URL
# https://github.com/melaniewalsh/Neat-Datasets/raw/main/Survivor-Viewers.csv 
# Save as survivor_df
survivor_df <- read.csv("https://github.com/melaniewalsh/Neat-Datasets/raw/main/Survivor-Viewers.csv", stringsAsFactors = FALSE) 

# Load the DPLYR library
library(dplyr)

# Calculate the average number of viewers for each season `avg_viewers`
season_avg_viewers <- survivor_df %>%
  group_by(season) %>% 
  summarize(avg_viewers = mean(viewers, na.rm=TRUE))

# For fun, let's make a plot of avg viewers over season number
plot(season_avg_viewers, type='b')

# Find the episode with the most number of viewers `most_views_row`
most_views_row <- survivor_df %>% 
  filter(viewers == max(viewers, na.rm=TRUE)) %>% 
  pull(viewers)

# Find the episode with the most number of viewers, then pull the number of viewers and save it as a variable `most_views`
most_views <- survivor_df %>% 
  filter(viewers == max(viewers, na.rm=TRUE)) %>% 
  pull(viewers)