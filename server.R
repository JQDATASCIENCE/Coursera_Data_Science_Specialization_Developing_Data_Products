library(shiny)
library(datasets)

MT_CARS <- mtcars
MT_CARS$am <- factor(MT_CARS$am, labels = c("Automatic", "Manual"))

shinyServer(function(input, output) {
    formulaText <- reactive({
        paste("mpg ~", input$variable)
    })
    
    formulaTextPoint <- reactive({
        paste("mpg ~", "as.integer(", input$variable, ")")
    })
    
    fit <- reactive({
        lm(as.formula(formulaTextPoint()), data=MT_CARS)
    })
    
    output$caption <- renderText({
        formulaText()
    })

    output$MPGPLOT <- renderPlot({
        boxplot(as.formula(formulaText()), 
                data = MT_CARS)
    })
    

    output$fit <- renderPrint({
        summary(fit())
    })
    
    output$PLOT <- renderPlot({
        with(MT_CARS, {
            plot(as.formula(formulaTextPoint()))
            abline(fit(), col=2)
        })
    })
 
})