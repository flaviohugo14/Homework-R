vector <- c(1,2,3)

if(vector[2] > vector[1]){
  draft <- vector[2]
  vector[2] <- vector[1]
  vector[1] <- draft
}

if(vector[3] > vector[1]){
  draft <- vector[1]
  vector[1] <- vector[3]
  vector[3] <- draft
}

if(vector[3] > vector[2]){
  draft <- vector[3]
  vector[3] <- vector[2]
  vector[2] <- draft
}

print(vector)