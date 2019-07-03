# Assignment 04
# G43265951
# Cong Chen

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Melvin's Field Goal Attempts"),
  
  # Sidebar with Input Widgets and "Data Table" Tab
  sidebarLayout(
    sidebarPanel(
      fileInput("file", h5("Choose .csv File")),
      
      selectInput("PorM", h5("Show Attempts in Match or Practice:"),
                   c("M", "P"), selected = "M"),

      selectInput("Goal", h5("Show Attempts Where Gola Scored (Y) or No Goal Scored (N)"),
                  c("Y", "N"), selected = "Y")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(type = "tabs",
                  tabPanel("Data Table", tableOutput("table")),
                  tabPanel("Plot",  plotOutput("plot"))
                  )
    )
  )
))
