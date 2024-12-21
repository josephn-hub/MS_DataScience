library(shiny)
ui <- fluidPage(
  titlePanel("University of Birchwood"),
  sidebarLayout(
    sidebarPanel(
      h1("Menu"),
      tags$h1(),
      br(),
      icon("graduation-cap"),
      "Courses",
      br(),
      icon("book"),
      " Subjects",
      br(),
      icon("user"),
      "Instructors",
      br(),
      icon("calendar"),
      " Events"
  ),
  mainPanel(
    h1("Welcome to University headlines"),
    p("Explor various things happening in the uni"),
    
    fluidRow(
      column(4,
             h3("Featured course"),
             icon("star"), "Course1",
             br(),
             icon("star"), "Course2",
             br(),
             icon("star"), "Course3"
             ),
      column(4,
             h3("Latest News"),
             icon("newspaper"), "new1",
             br(),
             icon("newspaper"), "new2",
             br(),
             icon("newspaper"), "new3",
      ),
      column(4,
             h3("Upcoming Events"),
             icon("calendar-alt"), "Event 1",
             br(),
             icon("calendar-alt"), "Event 2",
             br(),
             icon("calendar-alt"), "Event 3",
      )
    )
  )
  ) 
)

server <-  function(input, output){
  
}

shinyApp(ui,server)
