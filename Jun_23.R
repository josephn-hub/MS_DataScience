# Bar plot

country <- c("US", "UK", "UAE")
space <- c(10,20,30)

barplot(space, names.arg = country,density=8,width=c(1,2,3))

# Density plot
set.seed(1)
data <- rnorm(100)
plot(density(data), main="Density PLot", xlab = "value", col="blue")

# Heat map

set.seed(1)
data <-  matrix(rnorm(50), nrow = 10)
heatmap(data, main="Heat map", col=rainbow(256))

#Bubble plot
set.seed(1)
data <- data.frame(x=rnorm(20), y=rnorm(20), size=runif(20,1,4))
symbols(data$x, data$y, circles = data$size, inches = 0.1, main="Bubble plot",
        bg="lightblue", xlab="lifestyle", ylab="cancer")

# Stacked plot
set.seed(1)
timepoints <- 1:10
group1 <- cumsum(runif(10,1,5))
group2 <- cumsum(runif(10,1,5))
group3 <- cumsum(runif(10,1,5))
matplot(timepoints, cbind(group1, group2, group3), type="l",col=c("green","red","blue"),
        main= "Stacked plot", xlab = "Time", ylab = "Value",lty=1)
#legend("bottomleft", legend = c('Group1',"group2", "group3'),
#fill=c("green","red","blue"))

#Datasets
# library(help=datasets)
mtcars
dim(mtcars)
mtcars$mpg
summary(mtcars)
max(mtcars$mpg)
distinct(mtcars$wt)
sort(mtcars$mpg)
mtcars
mpg <- mtcars$mpg
cylinder <- mtcars$cyl
barplot(mpg, names.arg = cylinder,density=8, main="Bar plot", xlab = "cylinder", ylab = "mpg", 
        col="green", lwd=4)


horsepower <- mtcars$hp

weight <- mtcars$wt

pie(horsepower, label = weight, main = "HP/MLG",init.angle = 90, col=rainbow(length(mtcars$hp)))

legend("bottomright")

data <- data.frame(x = mtcars$mpg, y = mtcars$hp,size = runif(32,1,4))
symbols(data$x,data$y,circles = data$size,inches=0.1,main = "Bubble plot",bg="lightgreen",xlab = "MPG",ylab = "HP")

