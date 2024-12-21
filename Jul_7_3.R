library(shiny)

ui <-  fluidPage(
  fileInput("file", "Choose a file"),
  tableOutput("table")
)

server <- function(input, output){
  data <- reactive({
    req(input$file)
    read.csv(input$file$datapath)
  })
  
  output$table <- renderTable({
    data()
  })
}

###
shinyApp(ui,server, options = list(shiny.maxRequestSize = 70*1024*2))