library(shiny)

shinyUI(
    fluidPage(
        titlePanel("Miles per Gallon (MPG) Comparison to Various Variables "),
        sidebarLayout(
            sidebarPanel(
                selectInput("variable", "Variable:",
                            c("Num. of Cylinders" = "cyl",
                              "Displacement (cu.in.)" = "disp",
                              "Gross Horsepower" = "hp",
                              "Rear Axle Ratio" = "drat",
                              "Weight (1000 lbs)" = "wt",
                              "1/4 Mile Time" = "qsec",
                              "Engine (0 = V-shaped, 1 = straight)" = "vs",
                              "Transmission (0 = automatic, 1 = manual)" = "am",
                              "Num. of Forward Gears" = "gear",
                              "Num. of Carburetors" = "carb"
                              ))),
            mainPanel(
                h3(textOutput("caption")),
                tabsetPanel(type = "tabs", 
                            tabPanel("Plot", plotOutput("MPGPLOT")),
                            tabPanel("Regression model", plotOutput("PLOT"),
                                     verbatimTextOutput("fit")))
                )
            )
        )
    )