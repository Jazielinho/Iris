shinyUI(fluidPage(
      titlePanel("Descriptive Iris"),
      sidebarLayout(
            sidebarPanel(
                  p("This app show descriptive analysis from data table 'iris'"),
                  br(),
                  p("The following application shows a descriptive analysis of the data first used by fisher."),
                  p("You select the variables in the iris data and the main panel shows plots, and summary data."),
                  selectInput("variable","Select Variable",
                              names(iris)),
                  br(),
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
