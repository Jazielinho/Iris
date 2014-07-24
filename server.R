shinyServer(function(input, output) {
      plot_Salida <- reactive({
            par(mfrow=c(1,2))
            name<-input$variable
            if (name=="Species"){
                  pie(table(formulaText()))
                  barplot(table(formulaText()))
            }else{
                  hist(formulaText(),main=input$variable,xlab="")
                  boxplot(formulaText(),main=input$variable)
            }
      })
      formulaText <- reactive({
            iris[, input$variable]
            })
      
      output$plot <- renderPlot({
            plot_Salida()
      })
      
      output$summary <- renderPrint({
            summary(formulaText())
            })
      
      output$table <- renderTable({
            data.frame(x=formulaText())
            })
})
