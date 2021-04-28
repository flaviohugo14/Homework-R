# Programação em R - Homework

**Flávio**

<br />
<br />

## Vetores

---

### Exercicio 1

Script:
```r
x <- c(4,5,6,7,10,9,4,15)
x < 7
```
Console:
```r
[1] TRUE TRUE TRUE FALSE FALSE FALSE TRUE FALSE
```
---

### Exercício 2

Script:
```r
p <- c(1,2,3,4)
q <- c(3,3,3)
p+q
```
Console:
```r
[1] 4 5 6 7
'Warning message:
In p + q :
  comprimento do objeto maior não é múltiplo do comprimento do objeto menor'
```
---

### Exercício 3

Script:
```r
x <- c(1,2,3,4)
(x+2)[(!is.na(x)) & x > 0] -> k

print(k)
```
Console:
```r
[1] 3 4 5 6
```
---

### Exercício 4

Script:
```r
x <- c(2,4,6,8)
y <- c(TRUE, TRUE, FALSE, TRUE)

print(sum(x[y]))

```
Console:
```r
[1] 14
```
---

### Exercício 5

Script:
```r
x <- c(34, 56, 55, 87, NA, 4, 77, NA, 21, NA, 39)

count_na <- 0

count_na <- (count_na + 1)[is.na(x)]

length(count_na)

```
Console:
```r
[1] 3
```
---

### Exercício 6

Script:
```r
x <- c(4,6,5,7,10,9,4,15)

y <- c(0,10,1,8,2,3,4,1)

print(x*y)
```
Console:
```r
[1] 0 60 5 56 20 27 16 15
```
---

### Exercício 7

Script:
```r
a <- c(1,2,4,5,6)
b <- c(3,2,4,1,9)

cbind(a,b)
```
Console:
```r
     a b
[1,] 1 3
[2,] 2 2
[3,] 4 4
[4,] 5 1
[5,] 6 9
```
---
### Exercício 8

Script:
```r
a <- c(1,5,4,3,6)
b <- c(3,5,2,1,9)

a <= b
```
Console:
```r
[1]  TRUE  TRUE FALSE FALSE  TRUE
```
---

<br />
<br />

## Fatores

---
### Exercício 1

Script:
```r
x = c(1, 2, 3, 3, 5, 3, 2, 4, NA)
factor(x)
```

Console:
```r
[1] 1    2    3    3    5    3    2    4   
[9] <NA>
Levels: 1 2 3 4 5
```

Logo, os *levels* são: 1, 2, 3, 4 e 5.

---
### Exercício 2

Script:
```r
x <- c(11, 22, 47, 47, 11, 47, 11)
factor(x, levels=c(11, 22, 47), ordered=TRUE)
```

Console:
```r
[1] 11 22 47 47 11 47 11
Levels: 11 < 22 < 47
```

Há apenas três *levels*.

---

### Exercício 3

Script:
```r
s1 <- factor(sample(letters, size=5, replace=TRUE))

s2 <- factor(sample(letters, size=5, replace=TRUE))

## Código que concatena os fatores s1 e s2.
concated_factor <- as.factor(c(as.vector(s1),as.vector(s2)))
concated_factor
```

Console:
```r
[1] i y l y i w z a l a
Levels: a i l w y z
```

---

### Exercício 4

Script:
```r
x <- factor(c("high", "low", "medium", "high", "high", "low", "medium"))

## Gera uma tabela com a quantidade de cada level.
table(x)
```

Console:
```r
x
  high    low medium 
     3      2      2 
```
---
<br />
<br />

## Matrizes
---
### Exercício 1

Script:
```r
M <- matrix(c(1:10), nrow=5, ncol=2, dimnames=list(c('a', 'b', 'c', 'd', 'e'), c('A', 'B')))

M[1,]
M[,1]
M[3,2]
M['e', 'A']
```
Console:
```r
> M[1,]
A B 
1 6 

> M[,1]
a b c d e 
1 2 3 4 5 

> M[3,2]
[1] 8

> M['e', 'A']
[1] 5
```
---

### Exercício 2

Script:
```r
A <- matrix(c(2,0,1,3), ncol=2)
B <- matrix(c(5,2,4,-1), ncol=2)

A+B
A-B
```
Console:
```r
> A+B
     [,1] [,2]
[1,]    7    5
[2,]    2    2
> A-B
     [,1] [,2]
[1,]   -3   -3
[2,]   -2    4
```
---

### Exercício 3

Script:
```r
A <- matrix(c(2,0,1,3), ncol=2)
b <- c(7,4)

A*b
```

Console:
```r
> A*b
     [,1] [,2]
[1,]   14    7
[2,]    0   12
```
---

### Exercício 4

Script:
```r
A <- matrix(c(2,0,1,3), ncol=2)

t(A)
```

Console:
```r
     [,1] [,2]
[1,]    2    0
[2,]    1    3
```
---
### Exercício 5

Script:
```r
A <- matrix(c(2,0,1,3), ncol=2)

solve(A)
```

Console:
```r
     [,1]       [,2]
[1,]  0.5 -0.1666667
[2,]  0.0  0.3333333
```
---
### Exercício 6

Script:
```r
B <- matrix(c(5,2,4,-1), ncol=2)

det(B)
```

Console:
```r
[1] -13
```
---
<br />
<br />

## Data Frames
---

### Exercício 1
Script:
```r
employees <- data.frame(
  row.names = c('Alex', 'Lilly', 'Mark', 'Oliver', 'Martha', 'Lucas', 'Caroline'),
  Age = c(25, 31, 23, 52, 76, 49, 26),
  Height = c(177, 163, 190, 179, 163, 183, 164),
  Weight = c(57, 69, 83, 75, 70, 83, 53),
  Sex = c('M', 'M', 'F', 'F', 'M', 'F', 'M')
)

print(employees)
str(employees)
```

Console:
```r
> print(employees)
         Age Height Weight Sex
Alex      25    177     57   M
Lilly     31    163     69   M
Mark      23    190     83   F
Oliver    52    179     75   F
Martha    76    163     70   M
Lucas     49    183     83   F
Caroline  26    164     53   M

> str(employees)
'data.frame':	7 obs. of  4 variables:
 $ Age   : num  25 31 23 52 76 49 26
 $ Height: num  177 163 190 179 163 183 164
 $ Weight: num  57 69 83 75 70 83 53
 $ Sex   : Factor w/ 2 levels "F","M": 2 2 1 1 2 1 2
```
---
### Exercício 2
Script:
```r
df_working <- data.frame(
  row.names = c('Alex', 'Lilly', 'Mark', 'Oliver', 'Martha', 'Lucas', 'Caroline'),
  Working = c('Yes', 'No', 'No', 'Yes', 'Yes', 'No', 'Yes'),
  stringsAsFactors = FALSE
)

str(df_working)
print(df_working)
```

Console:
```r
> str(df_working)
'data.frame':	7 obs. of  1 variable:
 $ Working: chr  "Yes" "No" "No" "Yes" ...
> print(df_working)
         Working
Alex         Yes
Lilly         No
Mark          No
Oliver       Yes
Martha       Yes
Lucas         No
Caroline     Yes
```
---
## Exercício 3

Script:
```r
Working <- df_working$Working

employees <- cbind(employees, Working, stringsAsFactors = FALSE)
print(employees)
```

Console:
```r
         Age Height Weight Sex Working
Alex      25    177     57   M     Yes
Lilly     31    163     69   M      No
Mark      23    190     83   F      No
Oliver    52    179     75   F     Yes
Martha    76    163     70   M     Yes
Lucas     49    183     83   F      No
Caroline  26    164     53   M     Yes
```
---
## Exercício 4

Script:
```r
nrow(employees)
ncol(employees)
```

Console:
```r
> nrow(employees)
[1] 7
> ncol(employees)
[1] 5
```

7 linhas e 5 colunas.

---
## Exercício 5
Script:
```r
str(employees)
```

Console:
```r
'data.frame':	7 obs. of  5 variables:
 $ Age    : num  25 31 23 52 76 49 26
 $ Height : num  177 163 190 179 163 183 164
 $ Weight : num  57 69 83 75 70 83 53
 $ Sex    : Factor w/ 2 levels "F","M": 2 2 1 1 2 1 2
 $ Working: chr  "Yes" "No" "No" "Yes" ...
```
---

<br />
<br />

## Listas
---
## Exercício 1
Script:
```r
p <- c(2,7,8)
q <- c("A", "B", "C")
x <- list(p,q)

x[2]
```

Console:
```r
[[1]]
[1] "A" "B" "C"
```
---
## Exercício 2
Script:
```r
w <- c(2,7,8)
v <- c("A", "B", "C")
x <- list(w,v)

names(x) <- c("w", "v")
x$v[1] <- "K"
x
```

Console:
```r
$w
[1] 2 7 8

$v
[1] "K" "B" "C"
```
---
## Exercício 3
Script:
```r
a <- list("x" = 5, "y" = 10, "z" = 15)

## Retorna a soma do vetor criado a partir da lista.
sum_a <- sum(unlist(a))
```

Console:
```r
[1] 30
```
---
## Exercício 4
Script:
```r
list <- list("year" = c(2005:2016), "month" = c(1:12), "day" = c(1:31))
list
```

Console:
```r
$year
 [1] 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016

$month
 [1]  1  2  3  4  5  6  7  8  9 10 11 12

$day
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
[26] 26 27 28 29 30 31
```
---

<br/>
<br/>

## Condições

```r
# 1
number <- -200

if(number < 0) number else number
```

```r
# 2
number <- 16

if (number < 0) {
  NA
} else {
  sqrt(number)
}
```
```r
# 3
vector <- c(3,5)

if(vector[1] > vector[2]) vector[1] else vector[2]
```
```r
#4
vector <- c(5,4,10,4,3,9,5)
count <- 0

for (i in vector){
  if (i > mean(vector)){
    count = count + 1
  }
}

count
```

```r
#5

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
```
```r
#6

ifelse(sqrt(9) < 2, sqrt(9), 0)

#### Resposta: 0.
```

```r
#7

z <- -1

if(z < 0) {
  x <- abs(z)
  y <- z*3
}

print(x)
print(y)

#### Resposta: x = 1, y = -3
```

<br />
<br />

## Loops

```r
#1

msg <- c("Hello")
i <- 1

while(i < 7){
  print(msg)
  i = i + 1
}
```

```r
#2

x <- c(7, 4, 3, 8, 9, 25)

for(i in 1:4){
  print(x[i])
}
```

```r
#3

y <- c("q", "w", "e", "r", "z", "c")

for(i in y){
  print(i)
}
```
<br />
<br />


## Funções

```r
#1

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
```

```r
#2

value_is_in_vector <- function(value, vector){
  result <- 0
  for(i in vector){
    if(i == value){
      result = result + 1
    }
  }
  
  ifelse(result > 0, TRUE, FALSE)
}
```
```r
#3

how_many_in_vector <- function(value, vector) {
  result <- 0
  for(i in vector){
    if(i == value){
      result = result + 1
    }
  }
  
  result
}
```