## ui.R

#setwd("/Volumes/Shared/RMIT - Study/RMIT Project/RMIT Application v1")
source("rScript/utilities/loadLibrary.R")





header <- dashboardHeader()

sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Overview Dashboard", tabName = "postcodeAnalysis", icon = icon("dashboard")),
    menuItem("Next tab", tabName = "Tab2", icon = icon("dashboard")),
    sidebarSearchForm(label = "Enter a number", "searchText", "searchButton")
  )
)


body <- dashboardBody(
  tabItems(
    tabItem(
      tabName = "postcodeAnalysis",
      fluidRow(
        ### Box1.1
        box(title = "Australia Map",
          leafletOutput("map", height = 400),
          width = 12
        ),
        box(title = "Plot 1",
            width = 4
        )
      )
    ),
    tabItem(
      tabName = "Tab2",
      fluidRow(
        ### Box1.1
        box(title = "Australia Map",
            leafletOutput("map2", height = 400),
            width = 12
        ),
        box(title = "Plot 1",
            selectInput("sel1", label = NULL, choices = c("ex1", "ex2")),
            width = 4
        )
      )
    )
  )
)

ui <- dashboardPage(header, sidebar, body)


