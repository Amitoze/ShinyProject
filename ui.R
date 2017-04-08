## ui.R

#setwd("/Volumes/Shared/RMIT - Study/RMIT Project/RMIT Application v1")
source("rScript/utilities/loadLibrary.R")





header <- dashboardHeader()

sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Overview Dashboard", tabName = "Tab1", icon = icon("dashboard")),
    sidebarSearchForm(label = "Enter a number", "searchText", "searchButton")
  )
)


body <- dashboardBody(
  tabItem(
    tabName = "postcodeAnalysis",
    fluidRow(
      ### Box1.1
      box(title = "Australia Map",
        leafletOutput("map", height = 400),
        width = 12
      )
    )
  )
)

ui <- dashboardPage(header, sidebar, body)


