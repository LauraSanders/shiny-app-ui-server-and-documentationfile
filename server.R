library(shiny)

Ozonedetermined<-function(Solar.R) 18.5987278+0.1271653*Solar.R

shinyServer(
  function(input,output){
    output$inputValue<-renderPrint({input$Solar.R})
    output$odate<-renderPrint({input$date})
    output$prediction<-renderPrint({if(input$Solar.R>334)"This value is too high, not possible"
                                    else if (input$Solar.R<7) "This value is too low, not possible"
                                    else Ozonedetermined(input$Solar.R)})
  })