# Define UI for application

# Load data
maternity_df <- read.csv("https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/maternity-leave-2021.csv", stringsAsFactors = FALSE)

# User Interface
my_ui <- fluidPage(
  
  # Title - Static content
  h1("My INFO 201 App", align="center"),
  
  # Exercise 1: Add H2 header with your name
  
  # Exercise 2: Display bar plot
  plotlyOutput(outputId = "maternity_plot"),
  
  # Exercise 3: Create selectInput widget
  selectInput(
    inputId = "user_selection",
    label = "Countries",
    choices = maternity_df$Country.Name,
    selected = "United States",
    # True allows you to select multiple choices...
    multiple = TRUE
  )

  
  
)