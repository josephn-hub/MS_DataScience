# Factors

grades <- factor(c('A', 'B','C','D','C','A'))
grades


grades[1] <- 'E'

grades[2] <- 'E'
grades


grades <- factor(c('A', 'B','C','D'), levels = c('A', 'B','C','D','E'))
grades

# Graphics in R

plot(c(5,8), c(2,5))

plot(2,3)

plot(1,5 ,main = "Country/Population", xlab = "country", ylab = "population", col="red", cex=6, pch=3)

l1 <- c(5,6,7,8,9)
l2 <- c(1,3,5,6,8)

l3 <- c("jo","ka","na","mo")
l4 <- c(1,6,4,8)

plot(l1,l2, type="l", main = "Comparison", xlab="countryA", ylab= "countryB", col="green", lwd=5)
lines(l3, l4, type = "l", col="yellow", lty = 5,lwd=4)

#program 2

set.seed(3)

x <- rnorm(50)
y <- rnorm(50)

plot(x,y , main="Scatter between x and y", xlab = "x axis", ylab = "y axis", col="violet", lwd=4)

# Bar graph
#program 2

population <- c(500 , 300 , 200 ,  600)
country <- c("Ind", "Aus", "Can", "Amer")

barplot(population , names.arg=country, main="Bar plot", xlab = "country", ylab = "population", 
        col="red", lwd=4)

# program3

set.seed(3)

data <- rnorm(50)

hist(data, main="Histogram", xlab = "data", ylab = "frequency", col="pink", lwd=4)

# program5

set.seed(1)

data <- rnorm(50)

boxplot(data, main="Boxplot", xlab = "data", ylab = "frequency", col="pink", lwd=4)

# pie char


pop <- c(10,20,30,40)

country <- c("Arm", "Can", "USA", "Uk")

colors <- c("red","yellow","green", "blue")


pie(pop, label = country, main = "Country/Population",init.angle = 90, col = colors)

legend("bottomright", country, fill = colors)



