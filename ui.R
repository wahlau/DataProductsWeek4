#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(datasets)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("k-means Clustering on the Chatterjee-Price Attitude dataset"),
  
  # Sidebar with a slider input for number of bins 
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(attitude)),
    selectInput('ycol', 'Y Variable', names(attitude),
                selected=names(attitude)[[2]]),
    sliderInput('clusters', 'Cluster count',
                 min = 1, max = 11, value = 6),
    sliderInput("size", "Size",
                min = 1, max = 5, value = 3
    )
  ),
  mainPanel(
    plotOutput('plot1')
  )
))
