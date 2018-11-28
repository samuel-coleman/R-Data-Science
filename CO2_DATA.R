data(CO2)
CO2
class(CO2$Plant)
mean_uptake <- mean(CO2$uptake)
print(mean_uptake)
boxplot(uptake ~ Type, data=CO2)

quebecCO2 <- data.frame(CO2[1:42,])
mississippiCO2 <- data.frame(CO2[43:84,])

mean_checker <- function(q,m){
  meanq <- mean(q)
  print(c("Quebec mean uptake: ", meanq))
  meanm <- mean(m)
  print(c("Mississippi mean uptake: ",meanm))
  if(meanq>meanm){print("Quebec has the bigger mean uptake.")}
  if(meanq<meanm){print("Mississippi has the bigger mean uptake.")}
}

mean_checker(quebecCO2$uptake,mississippiCO2$uptake)
