install.packages("nycflights13")
library("nycflights13")
library("dplyr")

flights <- flights
airlines <- airlines
airports <- airports

# What was the average departure delay in each month?
# Save this as a data frame `dep_delay_by_month`
# Hint: you'll have to perform a grouping operation then summarizing your data
dep_delay_by_month <- flights %>%
  group_by(month) %>%
  summarize(delay = mean(dep_delay, na.rm = TRUE))

# If your above data frame contains just two columns (e.g., "month", and "delay"
# in that order), you can create a scatterplot by passing that data frame to the
# `plot()` function
plot(dep_delay_by_month, type = 'b')

# Use `left_join()` to join the "flights" dataframe to the "airlines" dataframe, which has the airline information
flights_airlines <- left_join(flights, airlines)

# What was the average departure delay for each airline?
# Hint: you'll have to perform a grouping operation then summarizing your data
dep_delay_by_airline <- flights_airlines %>%
  group_by(name) %>%
  summarize(delay = mean(dep_delay, na.rm = TRUE))