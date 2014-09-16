# ui.R

shinyUI(fluidPage(
  titlePanel("Consumer Complaints"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create demographic maps with 
        information from the 2010 US Census."),

      selectInput("var", 
                  label = "Choose a variable to display",
                  choices = c("Submitted Via", "Zip Code"),
                  selected = "Percent"),
      
      sliderInput("range",
                  label = "Range of interest:",
                  min = 0, max = 100, value = c(0, 100))
    ),
    
    mainPanel(plotOutput("map"))
  )
))