shinyUI(fluidPage(
      titlePanel("Descriptive Iris"),
      sidebarLayout(
            sidebarPanel(
                  p("This app show descriptive analysis from data table 'iris'"),
                  br(),
                  selectInput("variable","Select Variable",
                              names(iris)),
                  br(),
                  p("The code is is:",
                  a("this link",
                    href = "https://github.com/Jazielinho/Iris")
                  )),
            mainPanel(
                  tabsetPanel(type = "tabs",
                              tabPanel("Plot", plotOutput("plot")),
                              tabPanel("Summary", verbatimTextOutput("summary")),
                              tabPanel("Table", tableOutput("table"))
                              )
                  )
            )
      )
)
