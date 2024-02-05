# ui.R

library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Public Health Data Visualization"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("x_variable", "Malnutrition_Types:", choices = c("Severe_Wasting", "Wasting", "Overweight", "Stunting", "Underweight")),
      selectInput("y_variable", "Countries:", choices = c("Income_Classification", "Country"))
    ),
    
    mainPanel(
      plotOutput("scatterplot")
    )
  )
))
