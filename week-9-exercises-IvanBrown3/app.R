library(shiny)

source("ui.R")
source("server.R")
library(rsconnect)



shinyApp(ui = ui, server = server)
