blackjack <- function(x,y){
  if(x<22 & y<22){
    if(x>y){result <- x}
    if(y>x){result <- y}
    else{result <- x}
  }
  if(x>22 & y<22){result <- y}
  if(x<22 & y>22){result <- x}
  else{result <- 0}
  return(result)
}