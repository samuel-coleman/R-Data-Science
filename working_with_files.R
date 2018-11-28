oddest <- function(){
  vec <- read.csv("C:\Users\Admin\Documents\R Lessons\R Excercies\evens.csv")
  vec <- vec+1
  write.csv(vec, "odder.csv")
}