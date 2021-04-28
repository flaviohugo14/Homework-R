w <- c(2,7,8)
v <- c("A", "B", "C")
x <- list(w,v)

names(x) <- c("w", "v")
x$v[1] <- "K"
x