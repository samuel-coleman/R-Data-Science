WineData <- read.csv("C:/Users/Admin/Documents/R Lessons/Wine_Data_Unclean.csv")

WineFunc <- function(){
  SecondSplit <- regmatches(WineData$variety_and_region,gregexpr("/.+",WineData$variety_and_region))
  cleanFirst <- sub("/ ","",SecondSplit)
  WineData$Region1 <- cleanFirst
  
  subSplit <- regmatches(WineData$Region1, gregexpr("/.+",WineData$Region1))
  cleanSub <- sub("/ ","",subSplit)
  WineData$Region2 <-cleanSub
  
  FirstSplit <- sub("/.+","",WineData$variety_and_region)
  WineData$Variety <- FirstSplit
  
  WineData$Region1 <- sub("/.+","",WineData$Region1)
  return(WineData)
}

NewWineData <- WineFunc()