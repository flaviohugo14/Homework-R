how_many_in_vector <- function(value, vector) {
  result <- 0
  for(i in vector){
    if(i == value){
      result = result + 1
    }
  }
  
  result
}