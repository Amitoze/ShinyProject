## server.R

#setwd("/Volumes/Shared/RMIT - Study/RMIT Project/RMIT Application v1")
source("rScript/utilities/loadLibrary.R")

server <- function(input, output) {
  output$map <- renderLeaflet(
    leaflet() %>% addTiles() %>%
      setView(lng = 151.209900, lat = -33.865143, zoom = 10)
  )
  
}

