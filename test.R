# test.R

print("Branch name: Feature_1")
rm(list = ls())


### Build Dashboard ####
{
  setwd("/Volumes/Shared/RMIT - Study/RMIT Project/RMIT Application v1/")
  
  source("ui.R") #UI
  source("server.R") # Server
}

shinyApp(ui, server)
  