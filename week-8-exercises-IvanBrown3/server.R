# Define server for application

# Load data
maternity_df <- read.csv("https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/maternity-leave-2021.csv", stringsAsFactors = FALSE)

# Server
my_server <- function(input, output) {
  
  # Exercise 2: Render the bar plot and return it
  
  output$maternity_plot <- renderPlotly({
    
    # Exercise 3: Filter by user's selection of countries
    selected_df <- maternity_df %>% filter(Country.Name %in% input$user_selection)
    
    maternity_plot <- ggplot(selected_df) +
      geom_col(aes(x = Value,
                   # Reorder values
                   y = reorder(Country.Name, -Value),
                   fill = Country.Name))
    
    return(ggplotly(maternity_plot))
  })
}