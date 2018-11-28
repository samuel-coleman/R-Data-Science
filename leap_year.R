leap <- function(year){
  if(year%%4==0 & year%%100!=0){
    return(TRUE)
  }
  if(year%%400==0){
    return(TRUE)
  }
  else{return(FALSE)}
}