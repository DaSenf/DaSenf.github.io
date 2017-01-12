#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Top 10 European Soccer Clubs"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
        h4("Hello! This shiny app consists of a histogram showing the Top 10 European Soccer Clubs measured by the number of European Champions League titles they have won. With the sliders you can narrow down the selection from Top X to Top Y. With the checkboxes you can change the color of the bars. Combinations are possible as well ;)"),
       
        h4("Note that i build the data-set manually."),
        
        sliderInput("bins",
                   "Number of clubs:",
                   min = 1,
                   max = 10,
                   value = c(1,10)),
       checkboxInput("red",
                     "Red-Bars",value = F),
       checkboxInput("blue",
                     "Blue-Bars",value = F),
       checkboxInput("green",
                     "Green-Bars",value = F)
       
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
        plotlyOutput("barPlot")
        
    )
  )
))
