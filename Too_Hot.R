hot <- function(temp,summer){
  if(summer==TRUE){
    if(temp>=60 & temp<=100){
      IsIt <- TRUE
    }
    else{IsIt <- FALSE}
  }
  if(summer==FALSE){
    if(temp>=60 & temp<=90){
      IsIt <- TRUE
    }
    else{IsIt <- FALSE}
  }
  return(IsIt)
}
