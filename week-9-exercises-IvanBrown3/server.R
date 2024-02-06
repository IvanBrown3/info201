library(ggplot2)
library(plotly)
library(dplyr)

# Read in data
# Baby names from Social Security office
# https://www.kaggle.com/datasets/kaggle/us-baby-names
df <- read.csv("https://github.com/melaniewalsh/Neat-Datasets/blob/main/NationalNames.csv?raw=true", 
               stringsAsFactors = FALSE)

# Filter the data in some way (aka pick a subset of names to examine — it's too large to include all names for all years)
subset_df <- NULL

server <- function(input, output) {

  output$names_plot <- renderPlotly({

    filtered_df <- subset_df %>%
      # Filter for user's gender selection
      filter(Gender %in% input$gender_selection) %>%
      # Filter for user's name selection
      filter(Name %in% input$name_selection) %>%
      # Filter for user's year selection


    # Line plot
    names_plot <- ggplot(data = filtered_df) +
      geom_line(mapping =
                  aes(x = Year,
                      y = Count,
                      color = Name))

    return(names_plot)

  })

}
