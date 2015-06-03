

palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
          "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))
library(caret)
library(randomForest)
load("rfmodel.RData", .GlobalEnv)

shinyServer(function(input, output, session) {
        
        
        inputData <- reactive({
                df<-data.frame(cbind(input$SLen,input$SWid,input$PLen,input$PWid))
                names(df) <- c("Sepal.Length","Sepal.Width","Petal.Length","Petal.Width")
                df
        })
        
        pred <- reactive({
                input$goButton
                fit$finalModel$obsLevels[predict(fit, isolate(inputData()))]
        })
        
        output$pr <- renderText(pred())
        output$inp <- renderTable(inputData())
})
