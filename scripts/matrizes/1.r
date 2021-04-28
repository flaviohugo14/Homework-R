M <- matrix(c(1:10), nrow=5, ncol=2, dimnames=list(c('a', 'b', 'c', 'd', 'e'), c('A', 'B')))

M[1,]
M[,1]
M[3,2]
M['e', 'A']