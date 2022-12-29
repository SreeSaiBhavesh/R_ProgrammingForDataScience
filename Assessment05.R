data <- mtcars
data

myfact = factor(mtcars$cyl)
myfact

plot(mtcars$disp, mtcars$wt, ylab = "wt", main="My Title", sub = "My Subtitle")

plot(myfact,rnorm(32), main="Boxplot")

fun <- function(x) x^2
plot(fun, 0, 10, main = "Plot a function")
plot(trees[, 1:3], main = "Correlation plot")

plot(mtcars$mpg, mtcars$wt)
windows()
plot(mtcars$mpg, mtcars$wt)

j <- 1:20
k <- j

par(mfrow = c(2, 3))

plot(j, k, type = "l", main = "type = 'l'")
plot(j, k, type = "s", main = "type = 's'")
plot(j, k, type = "p", main = "type = 'p'")

par(mfrow = c(1, 1))

par(mfrow = c(1, 3))

plot(j, k, type = "o", main = "type = 'o'")
plot(j, k, type = "b", main = "type = 'b'")
plot(j, k, type = "h", main = "type = 'h'")

par(mfrow = c(1, 1))


plot(1:5, 1:5, pch = c("☺", "❤", "✌", "❄", "✈"),
     col = c("orange", 2:5), cex = 3,
     xlim = c(0, 6), ylim = c(0, 6))


r <- c(sapply(seq(5, 25, 5), function(i) rep(i, 5)))
t <- rep(seq(25, 5, -5), 5)
plot(r, t, pch = 21:25, cex = 3, yaxt = "n", xaxt = "n", lwd = 2,
     ann = FALSE, xlim = c(3, 27), bg = 1:25, col = rainbow(25))


text(r - 1.5, t, 1:25)

plot(mtcars$mpg, mtcars$wt, axes=FALSE)
minor.tick(nx = 3, ny = 3, tick.ratio = 0.5)
axis(1, at=15:25)

plot(mtcars$mpg, mtcars$wt)
axis(1, at = seq(round(min(mtcars$mpg)), round(max(mtcars$mpg)), by = 1), labels = 1:5)
axis(2, at = seq(round(min(mtcars$wt)), round(max(mtcars$wt)), by = 1), labels = 1:5)


plot(mtcars$mpg, mtcars$wt,
     ylim = c(3, 8), 
     xlim = c(10, 25)) 

plot(mtcars$mpg, mtcars$wt, main = "My title", sub = "Subtitle",
     cex.main = 2,   # Title size
     cex.sub = 1.5,  # Subtitle size
     cex.lab = 2.5,    # X-axis and Y-axis labels size
     cex.axis = 0.5) # Axis labels size


attach(USJudgeRatings)

plot(FAMI, INTG,
     main = "Familiarity with law vs Judicial integrity",
     xlab = "Familiarity", ylab = "Integrity",
     pch = 18, col = "blue")

# Select the index of the elements to be labelled
selected <- c(10, 15, 20)

# Index the elements with the vector
text(FAMI[selected], INTG[selected],
     labels = row.names(USJudgeRatings)[selected],
     cex = 0.6, pos = 4, col = "red")

detach(USJudgeRatings)

plot(mtcars$mpg, mtcars$wt, pch = 19)
lines(2:6, 15:25, lwd = 3, col = "red")
lines(2:3, 10:30, lwd = 3, col = "green")

# Adding a legend
legend("bottomright", legend = c("red", "green"),
       lwd = 3, col = c("red", "green"))


x=1:10
y=x^1/2
z = x^2

# plotting x and y coordinate 
# line 
plot(x, y, col="blue")

# adding another line on the
# coordinates involving y and z
lines(z, y ,col="red")

# Adding a legend to the graph
# defining the lines 
legend(2, 4, legend=c("Equation 1", "Equation 2"), 
       fill = c("blue","red")
)


fun<-function(x) x^2
plot(fun(1:20))
title("My title",
      adj = 0.75,  # Title to the right
      line = 0.50)

title("Hi", adj = 0.5)

