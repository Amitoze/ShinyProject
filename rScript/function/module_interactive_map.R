##*************************##
## Module: Interactive Map ##
##*************************##



# ui.R
mapInteractiveUI <- function(id) {
  # create unique id for each object
  ns <- NS(id)
  fludirow(
    box(title = "Australia Map",
        leafletOutput(ns("map"), height = 400),
        width = 12
    ),
    box(title = "Plot 1",
        selectInput(ns("selection"), label = NULL, choices = c("ex1", "ex2")),
        width = 4
    )
  )
}




# server.R
mapInteractive <- function(input, output, session) {
  output$map <- renderLeaflet({
    leaflet(pairs.loc) %>% addTiles() %>% addProviderTiles("Esri.NatGeoWorldMap")
  })
  
}