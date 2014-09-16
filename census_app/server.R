# server.R

library(maps)
library(mapproj)
counties <- read.csv(data/cc.csv, header = TRUE, sep = ",", quote = "\"",
                     dec = ".", fill = TRUE, comment.char = "#", ...)
source("helpers.R")


shinyServer(
  function(input, output) {
    output$map <- renderPlot({
      args <- switch(input$var,
                     "Submitted Via" = list(cc$white, "darkgreen", "% White"),
                     "ZipCode" = list(cc$black, "black", "% Black"),
      args$min <- input$range[1]
      args$max <- input$range[2]
      
      do.call(percent_map, args)
    })
  }
)