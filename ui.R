library(shiny)

shinyUI(
  navbarPage("Probability Density Function (PDF)", 
             tabPanel("Application - wrapper dnrom function",
                      sidebarPanel(
                        textInput(inputId = "mu", 
                                  label = "Set a mu value:", 
                                  value = "0"),
                        textInput(inputId = "sd", 
                                  label = "Set a sd value:", 
                                  value = "1"),
                        sliderInput(inputId = "ranNum", 
                                    label = "Range of number to generate:", 
                                    value = c(-5, 5), min = -10, max = 10,
                                    step = 0.1, animate = FALSE),
                        checkboxInput(inputId = "isLogScale", 
                                      label = "Is log scale?",
                                      value = FALSE) 
                      ),
                      mainPanel(plotOutput("dnormPlot")) 
                      ),
             tabPanel("Documentation",
                      p("The program is a simple GUI wrapper for the *dnorm* r function. 
                        The user may change parameters, such as, x, mean, sd, and log (TRUE/FALSE), 
                        and see how the distribution changes thanks to plot.")
             )
  )
)


