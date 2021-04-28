sum_integer <- function(x,y){
  if(!(is.numeric(x)) | (!is.numeric(y))){
    print("Use only numbers")
  }
  
  else {
    if(x == as.integer(x) & y == as.integer(y)){
      x + y
    } else {
      print("Use only integer numbers")
    }
  }
}