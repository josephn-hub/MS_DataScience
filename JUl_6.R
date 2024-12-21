install.packages("ggplot2")
library(ggplot2)
 # Sample data
data <- data.frame(x = rnorm(10), y= rnorm(10))

# Scatter plot
ggplot(data, aes(x,y)) +
  geom_point() + 
  ggtitle("Scatter plot")


#Bar plot

data <-  data.frame(category = c("A", "B", "C", "D"), value = c(3,7,2,5))

ggplot(data, aes(x= category,  y= value)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  ggtitle("Bar plot")


# Line plot

data <- data.frame(x =1:10, y1= rnorm(10), y2=rnorm(10))


ggplot(data, aes(x)) +
  geom_line(aes(y = y1), color="blue") +
  geom_line(aes(y = y2), color= "green") +
  ggtitle("Line plot with multiple lines")


# program4 

data <-  data.frame(value = rnorm(1000))
# Histogram
ggplot(data, aes(x = value)) +
  geom_histogram(binwidth = 0.8, fill="yellow", colour="black") +
  ggtitle("Histogram")


# plot1 dataset
install.packages("datasets")
library(datasets)
data("iris")
ggplot(iris, aes(x = Species, y=Sepal.Length)) +
  geom_boxplot(fill="skyblue") +
  ggtitle("Boxplot : Sepal length by species")

# plot for dataset2

data("airquality")

ggplot(airquality, aes(x= Day, y= Ozone, group= Month, color = Month)) +
         geom_line() +
         ggtitle("Line plot Ozone layer days over month")
       
# PLot for dataset4
install.packages("gridExtra")
library(gridExtra)

p1 <-  ggplot()


######
install.packages("tidyverse")
data <- mtcars
data <- filter(data,cyl==6)
data <- select(data,mpg,wt)
print(data)


data <- mtcars %>% filter(cyl==6) %>% select(mpg,wt)
print(data)


## program(using gather to change wide data to long) 

data <- data.frame(ID = c(1,2,3), Jan = c(10,15,20), Feb = c(20,13,14))
print(data)

long_data <- gather(data, key = "Month", value ="Values", -ID)
print(long_data)


### Summarise data for data manipulation for filter

summarised_data <- iris %>% filter(Species =="setosa") %>% 
  summarise(avg_sep_length <- mean(Sepal.Length),
            ava_sep_width <- mean(Sepal.Width))

print(summarised_data)

## group by 

grouped_data <- iris %>% group_by(Species)%>% 
  summarise(avg_sep_length <- mean(Sepal.Length),
            ava_sep_width <- mean(Sepal.Width))

### grouped to long
reshaped_data <- iris %>% gather(key="Variable", value="Values", -Species)
print(reshaped_data)

print(grouped_data)


