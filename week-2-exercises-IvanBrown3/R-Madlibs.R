# Let's play a game of Madlibs!

# Talk to your partners and ask them about their hometown, favorite food, age, and whether they like rain

# Assign the appropriate values to each of the following variable names, and use the data type listed in the comment. Make sure to run each line to save the variable in your Global Environment
hometown <- "seattle"                #character
food <- "pizza"                  #character
age <- 21                 #numeric
likes_rain <- TRUE       #logical
# Calculate someone's likely birth year only by using the age variable and a basic math operation
birth_year <- 2023 - age          #numeric


# Use a built-in R function to mash together each character string and variable, and print the message to the console
string1 <-c("My partner's hometown is", hometown)
string2 <-c("My partner's favorite food is", food)
string3 <-c("My partner was probably born in", birth_year)
string4 <-c("The statement 'my partner likes rain' is", likes_rain)
print(string1)
print(string2)
print(string3)
print(string4)

# Use a built-in R function to print the data type of each variable to the console
print(class(hometown))
print(class(food))
print(class(age))
print(class(likes_rain))
