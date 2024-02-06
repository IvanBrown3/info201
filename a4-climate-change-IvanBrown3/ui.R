library(shiny)
library(plotly)

emissions_data <-read.csv("owid-co2-data.csv")

ui <- fluidPage(
  titlePanel("CO2 Emissions from Coal"),
  sidebarLayout(
    sidebarPanel(
      selectInput("country", "Select a Country",
                  choices = c("Mexico", "Russia", "China"), 
                  selected = "Mexico"),
      sliderInput("year_range", "Select Year Range",
                  min = 1910, max = 1999, value = c(1910, 1999), step = 1)),
    mainPanel(
      plotlyOutput("chart"),
      br(),
      div(id = "description")
    )
  )
  ,
  tabPanel("Summary",
           fluidRow(
             column(width = 12,
                    p("Through making this shiny app I have decided to study the rise of the tons of CO2 emissions between 1910-1999. I studied this rise in three different countries to show the trend within each interactively. I was interested to see when the first dramatic spikes and rises began to occur with coal and their correlation to CO2 emissions within Mexico, China, and Russia. From looking at the graphs it is clear that Russia was farther ahead maufacturring cappabilities
                      in and before the start of the 1940s. It seems that countries like China and Mexico started rapidly increasing their coal based CO2 emissions starting in 1960. China had a much greater spike that Mexico. China additionally reached a peak much higher and more drastically than either country. This shows how 
                      although being later to the coal based manufacting they were putting out more CO2 emissions than either compared countries. "),
                    h4("Summary Information"),
                    p("In this shiny app project I decided to use the Shiny library and plotly to develop an interactive graphic chart that shows the rates of emmissions by the ton in the last century with respect to the use of coal."),
                    p("This data was collected by the journal Our World In Data and it was generated in order to give the people a historic look at the world CO2 emission data is since its documentation has been existent. It is important to give a more contextual look at global CO2 emissions. It shows when the great revolution into using fossil fuels and coals began. Additionally, showing us how a country like the Soviet Union could massively decrease their CO2 emissions with the collapse of their country. These ideas and historical events can be tracked and understood with the understanding of national CO2 emissions. This data was generated and collected using all former documentation by countries that are willing to make their information public. This is also data that is scientifically generated based on location and presumed output of emissions which is usually based on several additional factors. Overall, there are some limitations with this data set particularly that there is just missing information all over the data set. Often times, certain countries have a deeper backlog of their total emissions so comparing smaller countries to another becomes a bit more challenging. Also, often times these statistics are reported out by the countries so there is a possibility of an exaggeration something less than for these data that are submitted."),
                    h4("5 Relevant Values"),
                    p("1) The max year between 1910-1999 for China's per ton coal emmsions was in 1996."),
                    p("2) The min coal emission for Mexico was in 1917"),
                    p("3) The total amount of CO2 emission from coal in Russia decreased between the years of 1988 and 1999 by 516 total CO2 emmisons."),
                    p("4) The range of the most emmitting years for China was 1960-1998. "),
                    p("5) The max coal emmison for China in this year range was 2660.1.")
             )
           )
  )
)

