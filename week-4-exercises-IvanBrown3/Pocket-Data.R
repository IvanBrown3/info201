# Load the pocket size data from the Pudding

# Read more about the data here: https://github.com/the-pudding/data/blob/master/pockets/measurements.csv

pocket_df <- read.csv("https://github.com/the-pudding/data/blob/master/pockets/measurements.csv", stringsAsFactors = FALSE)

# Extract the column "menWomen" from the dataframe and save as the variable `gender`
gender <- pocket_df$menWomen

# How many men's pockets vs women's pockets are in this data?
# First, try to filter the gender vector for only "men." (Hint: your first approach might not work, and you might have to use a built-in function to clean the data!) Then find out how many values correspond to "men"
gender <- trimws(gender)

length(gender[gender == 'men'])

# Try to filter the gender vector for only "women." (Hint: your first approach might not work, and you might have to use a built-in function to clean the data!) Then find out how many values correspond to "women"
length(gender[gender == 'women'])

# Extract the column "maxHeightFront" from the dataframe and save as the variable `front_pockets`
front_pockets <- pocket_df$maxHeightFront

# What is the average height of front pockets in the dataset?
mean(front_pockets, na.rm = TRUE)

# What is the maximum height of front pockets in the dataset "maxHeightFront"?
max(front_pockets, na.rm = TRUE)
# What is the minimum height of front pockets in the dataset "maxHeightFront"?
min(front_pockets, na.rm = TRUE)

# Now we want to analyze the material in the pants fabric, and figure out whether the pants are mostly
# dominated by a single material or more distribuetd between materials
# So we need to extract just the first numbers from the column "fabric" 
# Complete this extraction by using gsub() 
# Hint: Removing text after a certain string might be the same thing as extracting the string!
gsub("%.*", "", pocket_df$fabric)
# Extract the column brand into the variable all_brands
all_brands <- pocket_df$brand

# Write a function report_brand() that reports how many pockets from each brand are included in the data
# The function should return a message that reads "There are [X] brands that match [Name of Brand] in the dataset." 
report_brand <- function(brand) {
  num_brands <- sum(str_detect(brand, all_brands))
  paste("There are", num_brands, "brands that match", brand, "in this dataset")
}


# Call your function and test it on the brand "Guess"
report_brand("Guess")


# Call your function and test it on the brand "Abercrombie"
report_brand("Abercrombie")

# Call your function on the entire column brand with sapply()
sapply(pocket_df$brand, report_brand)

