x <- c(34, 56, 55, 87, NA, 4, 77, NA, 21, NA, 39)

count_na <- 0

count_na <- (count_na + 1)[is.na(x)]

length(count_na)