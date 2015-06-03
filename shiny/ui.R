

shinyUI(pageWithSidebar(
        headerPanel('Iris random forest modeling'),
        
        sidebarPanel(
                p('This app predicts the flower species from a set of four input features.
                  It uses a random forest model trained on the iris dataset. Usage: Simply
                  select the desired values using the slider bars below, then press the Go button. 
                  The predicted flower species will be displayed in the main panel.'),
                sliderInput("SLen", "Sepal Length:", 
                            min = 4, max = 8, value = 6, step= 0.1),
                sliderInput("SWid", "Sepal Width:", 
                            min = 2, max = 4.5, value = 3, step= 0.1),
                sliderInput("PLen", "Petal Length:", 
                            min = 1, max = 7, value = 4, step= 0.1),
                sliderInput("PWid", "Petal Width:", 
                            min = 0.1, max = 2.5, value = 1, step= 0.1),
                actionButton("goButton", "Go!")
                
        ),
        
        mainPanel(
                h3('You entered:'),
                tableOutput('inp'),
                h3('The predicted iris species is:'),
                h2(textOutput('pr'))
                
        )
))
