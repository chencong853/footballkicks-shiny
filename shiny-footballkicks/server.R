# Assignment 04
# G43265951
# Cong Chen

library(shiny)

# Define server logic required to show the data table and draw a histogram
shinyServer(function(input, output) {

  output$table <- renderTable({
      infile <- input$file
      # Make sure that no error happens when infile is empty
      if (is.null(infile)) 
        return(NULL)
      # Import data file
      df <- read.csv(infile$datapath, header = TRUE, sep = ",")
      # Filter data based on selection
      df_filter <- subset(df, df$practiceormatch == input$PorM & df$goal == input$Goal)
      df_filter
     })
  
  library(ggplot2)
  
  output$plot <- renderPlot({
    # Get filtered data
    infile <- input$file
    if (is.null(infile)) 
      return(NULL)
    df <- read.csv(infile$datapath, header = TRUE, sep = ",")
    df_filter <- subset(df, df$practiceormatch == input$PorM & df$goal == input$Goal)
    # Draw the histogram 
    ggplot(df_filter, aes(x = yards)) + geom_histogram(binwidth = 1, color = "white" ) 
  })
  
})
