#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$barPlot <- renderPlotly({
    
    # generate bins based on input$bins from ui.R

      tab3l <- read.table("soccerdata.txt",sep=";", colClasses = "character" , header = T)
      
      tab3l$titlescount <- as.numeric(tab3l$titlescount)
      ord <- order(tab3l$titlescount, decreasing = T)
      
      a <- with(tab3l[ord[input$bins[1]:input$bins[2]],],data.frame(club, titlescount))

      with(a,plot_ly(x=club, y=titlescount, type="bar", color = "1", colors=rgb(input$red,input$green,input$blue)))
  })
  
})
