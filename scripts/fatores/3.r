s1 <- factor(sample(letters, size=5, replace=TRUE))

s2 <- factor(sample(letters, size=5, replace=TRUE))

## Código que concatena os fatores s1 e s2.
concated_factor <- as.factor(c(as.vector(s1),as.vector(s2)))
concated_factor