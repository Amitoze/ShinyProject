# test.R

print("Branch name: Feature_1")
rm(list = ls())


### Build Dashboard ####
{
  setwd("/Volumes/Shared/RMIT - Study/RMIT Project/ShinyProject/")
  
  source("ui.R") #UI
  source("server.R") # Server
}

shinyApp(ui, server)
  