installed.packages("class")
install.packages("ggplot2")

library(class)
library(ggplot2)

setwd("C:/Users/Admin/Documents/R Lessons")

RawData <- read.csv("C:/Users/Admin/Documents/R Lessons/BreastCancerData.csv",header = FALSE)

names(RawData) <- c("id","Diagnosis","radius_mean","texture_mean","perimeter_mean","area_mean","smoothness_mean","compactness_mean","concavity_mean",
                    "concave_points_mean","symmetry_mean","fractal_dimension_mean","radius_se","texture_se","perimeter_se","area_se","smoothness_se",
                    "compactness_se","concavity_se","concave_points_se","symmetry_se","fractal_dimension_se","radius_worst","texture_worst",
                    "perimeter_worst","area_worst","smoothness_worst","compactness_worst","concavity_worst","concave_points_worst","symmetry_worst",
                    "fractal_dimension_worst")

Data_NoID <- RawData[,-1]
Data_NoResults <- Data_NoID[,-1]

FeatureScaling <- function(x){
  ((x-min(x))/(max(x)-min(x)))
}

Data_Normalised <- as.data.frame((lapply(Data_NoResults, FeatureScaling)))

Data_Training <- Data_Normalised[1:450,]
Data_Test <- Data_Normalised[451:569,]

#k_value <- floor(sqrt(length(Data_Training)))
k_value <- 8

Data_Predictions <- knn(Data_Training,Data_Test,RawData[1:450,2],k=k_value)

Data_Reference <- Data_NoID[451:569,1]

table(Data_Predictions,Data_Reference)

