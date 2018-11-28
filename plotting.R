flowers <- function(){
  data(iris)
  boxplot(Sepal.Width ~ Species, data=iris)
  plot(Petal.Width ~ Petal.Length, data=iris)
}
