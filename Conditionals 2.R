calc <- function(choice,x,y){
  if((x==0 | y==0) & (x!=0 | y!=0)){
    if(y==0){y <- x}
    if(x==0){x <- y}
  }
  if(choice==TRUE){
    result <- x+y
  } else{
    result <- x*y
  }
  return(result)
}
calc()