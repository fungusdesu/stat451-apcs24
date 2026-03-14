set.seed(39)
x <- sample(1:100, size = 2, replace = TRUE)
mx <- mean(x)
sdx <- sd(x)
y <- sapply(x, function(p) (p - mx)/sdx)

x
mean(x)
sd(x)

y
mean(y)
sd(y)

