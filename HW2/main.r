x <- c(
  4.1, 7.7, 17.5, 31.4, 32.7, 40.6, 92.4,
  115.3, 118.3, 119.0, 129.6, 198.6, 200.7, 242.5,
  255.0, 274.7, 274.7, 302.8, 334.1, 430.0, 489.1,
  703.4, 978.0, 1656.0, 1697.8, 2745.6
)

xmed <- median(x)

df <- data.frame(
    x = c(),
    y = c()
)

for (i in 1:floor(length(x)/2))
{
    print(c(x[length(x) - i + 1] - xmed, xmed - x[i]))
	row <- data.frame(
		x = c(x[length(x) - i + 1] - xmed),
		y = c(xmed - x[i])
	)
    df <- rbind(df, row)
}

df

plot(df, pch = 19) + abline(coef = c(0, 1), col = "red", lty = 2) + abline(coef = c(98.31099, 0.0659555), col = "blue", lwd = 1.5)