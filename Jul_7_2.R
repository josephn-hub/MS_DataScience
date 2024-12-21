#library(shiny)

# UI

ui <- fluidPage(
  titlePanel("Youtube player"),
  mainPanel(
    HTML('<iframe width="560" height="315" src="https://www.youtube.com/embed/E-uX0jO1SmU?si=Uzi0gsPjlMHZytBd" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>')
  )
)

shinyApp(ui, server = function(input,output) {})
