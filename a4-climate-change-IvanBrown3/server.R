library(shiny)
library(plotly)

emissions_data <-read.csv("owid-co2-data.csv")

server <- function(input, output) {
  
  fd <- reactive({
    subset(emissions_data,
           country %in% input$country &
             year >= input$year_range[1] &
             year <= input$year_range[2])
  })
  
 
  output$chart <- renderPlotly({
    
    p <- plot_ly(data = fd(), x = ~year, y = ~coal_co2,
                 color = ~country, type = "scatter", mode = "lines") %>%
      layout(title = "CO2 Emissions from Coal",
             xaxis = list(title = "Year"),
             yaxis = list(title = "CO2 Emissions from Coal"),
             legend = list(title = "Country"))
    
    p
  })
  

}