library(ggplot2)
ui <- fluidPage(
  titlePanel("Interactive Iris Dataset Explorer"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("species", "Select Species:", choices = unique(iris$Species)),
      sliderInput("bins", "Number of Bins:", min = 5, max = 30, value = 10)
    ),
    
    mainPanel(
      plotOutput("histogram")
    )
  )
)

# Define server logic
server <- function(input, output) {
  output$histogram <- renderPlot({
    filtered_data <- iris[iris$Species == input$species, ]
    ggplot(filtered_data, aes(x = Sepal.Length)) +
      geom_histogram(binwidth = (max(filtered_data$Sepal.Length) - min(filtered_data$Sepal.Length)) / input$bins, fill = "blue", color = "black") +
      labs(title = paste("Histogram of Sepal Length for", input$species, "species"), x = "Sepal Length", y = "Frequency")
  })
}

# Run the app
shinyApp(ui, server)
