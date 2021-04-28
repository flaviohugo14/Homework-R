x <- c(1,2,3,4)
(x+2)[(!is.na(x)) & x > 0] -> k

print(k)