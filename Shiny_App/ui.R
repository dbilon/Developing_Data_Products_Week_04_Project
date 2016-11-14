# Week 04 Project Final

library(datasets)
mtcars <- (mtcars)

pageWithSidebar(
  headerPanel('MT Cars k-means clustering'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(mtcars)),
    selectInput('ycol', 'Y Variable', names(mtcars), selected=names(mtcars)[[2]]),
    numericInput('clusters', 'Cluster count', 3, min = 1, max = 9),
    helpText("INSTRUCTION: Explore the relationship of cars by creating similar clusters based on selected inputs.
             Select: 2 Variables (X and Y) and # of clusters to be created.")
  ),
  mainPanel(plotOutput('plot1')
  )
)