# load library
library(shiny)

# Define how application looks
shinyUI(fluidPage(
  # Add title
  titlePanel("Histogram of Jenna's fitness measure"),
  # Define sidebar
  sidebarLayout(
      
    # Add inputs in dropdown menu (select)
    sidebarPanel(
      selectInput("variable", label = "Variable:", choices = list("Steps" = "steps", 
          "Floors" = "floors", "Distance" = "distance"), 
          selected = "Steps")),

    
    
    # Add outputs in main panel
    mainPanel(
      textOutput("text1"),
      plotOutput("plot"))
  
  )
))



