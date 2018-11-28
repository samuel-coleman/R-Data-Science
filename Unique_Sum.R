uniquesum <- function(x,y,z){
  if(x!=y & x!=z & y!=z){
    result <- x+y+z
  }
  if(x==y & x!=z){result <- z}
  if(x==z & x!=y){result <- y}
  if(y==z & x!=y){result <- x}
  if(x==y & x==z){result <- 0}
  return(result)
}