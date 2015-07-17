# File to define input and output
library(dplyr)
library(ggplot2)
load("krall_fitbit.RData")
shinyServer(function(input, output) {
	
  # Reactive variables change with input (checkboxes etc.)
  variable <- reactive({input$variable})

  # Define output based on variables (need () to make reactive)
  output$text1 <- renderText({paste0("Variable = ", variable())})

  # Define output plot
   output$plot <- renderPlot({
    hist(daily[, variable()], main = "", xlab = "")})
  


})
