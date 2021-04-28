vector <- c(5,4,10,4,3,9,5)
count <- 0

for (i in vector){
  if (i > mean(vector)){
    count = count + 1
  }
}

count