WineData <- read.csv("C:/Users/Admin/Documents/R Lessons/Wine_Data_Unclean.csv")

Splitting <- function(data,x,col1,col2,col3){
  
  SecondSplit <- regmatches(data[,x],gregexpr("/.+",data[,x]))
  cleanSecond <- sub("/ ","",SecondSplit)
  data[,col2]  <- cleanSecond
  
  #subSplit <- regmatches(DataB$col2, gregexpr("/.+",DataB$col2))
  #cleanSub <- sub("/ ","",subSplit)
  #DataB$col3 <-subSplit
  #
 # FirstSplit <- sub("/.+","",data$x)
  #data$col1 <- FirstSplit
  
  #data$col2 <- sub("/.+","",data$col2)
  
  return(data)
}

WineData <- Splitting(WineData,variety_and_region,'Variety','Region1','Region2')