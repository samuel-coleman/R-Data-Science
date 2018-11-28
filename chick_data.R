data("ChickWeight")

week3 <- which(ChickWeight$Time==21) 

chickweek3 <- data.frame(ChickWeight[week3,])
plot(chickweek3$weight ~ chickweek3$Diet)



