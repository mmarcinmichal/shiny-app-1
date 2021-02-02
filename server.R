library(shiny)

shinyServer(
  function(input, output, session) {

  output$dnormPlot <- renderPlot({

    isLogScale <- FALSE
    
    if (input$isLogScale) {
      isLogScale <- TRUE
    }
    
    set.seed(3000)
    xseq <- seq(as.numeric(input$ranNum[1]), 
                as.numeric(input$ranNum[2]), .01)
    
    densities <- dnorm(xseq, as.numeric(input$mu), 
                       as.numeric(input$sd), log = isLogScale)
    
    plot(xseq, densities, col = "red", 
         xlab = "", ylab = "Density", 
         type = "l", lwd = 2, 
         cex = 2, main = "PDF of Standard Normal", 
         cex.axis = .8)
    
  })
  
})
