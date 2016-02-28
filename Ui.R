

shinyUI(
  pageWithSidebar(
      headerPanel("What is the Ozone based on the Solar.R rate"),
    sidebarPanel(
      numericInput('Solar.R', 'Solar.R', 180, min = 7, max = 334, step = 10),
      submitButton('Submit'),
      dateInput("date", "Date:")
    ),
    mainPanel(
      h2('My documentation can be found here: https://github.com/LauraSanders/shiny-app-ui-server-and-documentationfile'),
      h3('Results of prediction'),
      h4('The value you entered'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in a prediction of '),
      verbatimTextOutput("prediction")
    )
  )
)