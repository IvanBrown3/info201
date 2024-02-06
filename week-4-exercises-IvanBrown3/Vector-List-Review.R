# Vector / List Review

# Number of visits to Rainier from 2018-2020: 1518491, 1501621, 1160754
# Number of visits to Cascades from 2018-2020: 30085, 38208, 30885

# Make Rainier's visits into a vector and add an NA value into the vector, as well
rainier_visits <- c(1518491, 1501621, 1160754, NA)

# Calculate the sum total of Rainier visits

sum(rainier_visits, na.rm = TRUE)

# Make the Rainier and the North Cascade's visits into a list of vectors, with a tag for each park name
wa_visits <- list(
  Rainier = c(1518491, 1501621, 1160754, NA),
  Cascades = c(30085, 38208, 30885, NA)
)

# Calculate the sum total visits for each National Park,
# then assign to the variable summed visits
summed_visits <- sapply(wa_visits, sum, na.rm = TRUE)

# Now add an NA value into each vector in the list above, 
# and see if you can figure out how to calculate the sum total visits for each park
wa_visits <- lapply(wa_visits, append, values = NA)
summed_visits <- sapply(wa_visits, sum, na.rm = TRUE)
