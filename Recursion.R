loop <- function(choice,x){
  for(i in 1:10){
    if(x==0){
      x <- i
    }
    if(choice==TRUE){
      result <- x+i
    } else{
      result <- x*i
    }
    print(result)
  }
}

   
  
