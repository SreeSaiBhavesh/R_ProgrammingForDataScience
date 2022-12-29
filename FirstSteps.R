# Assignment 2

# Question 1
add <- function(x,y){
  paste("Addition of 2 given numbers",x+y)
}

# Default argument passage
sub <- function(x=5, y=2){
  paste("Subtraction of 2 given numbers",x-y)
}

#sub(8,3)
#paste("Subtraction with default argument")
#sub()

#function without arguments
mul <- function(){
  num1 = as.integer(readline(prompt = "Enter the Number1: "))
  num2 = as.integer(readline(prompt = "Enter the Number2: "))
  paste("Multiplication of 2 given numbers",num1*num2)
}
#mul()

div <- function(x=10,y=5){
  paste("Division of 2 given numbers", x/y)
}
#div(10,5)

module <- function(x=6,y=4){
  paste("Modulo of 2 given numbers", x%%y)
}
#module(9,5)

val = readline(prompt = "Enter the Number: ")
result = switch(  
  val,  
  "1"= add(x,y),  
  "2"= sub(),  
  "3"= mul(),  
  "4"= div(),
  "5"= module()
)
print(result)

e = c(1,0,1,0)
paste(e)
f = factor(c(1,0,1,0))
expected_value <- c(1,0,1,0,1,1,1,0,0,1)
predicted_value <- c(1,0,0,1,1,1,0,0,0,1)
example <- confusionMatrix(data=predicted_value, reference = expected_value)

#Display results 
example
paste(f)# Question 2
vec = c(1:94,2,3,2,5,5,5)
vec
mean(vec)
median(vec)
mode = sort(-table(vec))[1]
mode
range(vec)
IQR(vec)
sd(vec)
hist(vec)
summary(vec)
hist(vec, xlab = "Weights", col="blue", border="black")
table(vec)

# Question 3
#a
Name <- c("Bhavesh", "Chetan", "Darshan", "Naveen", "Naidu")
Age <- c(19, 21, 20, 21, 25)
df <- data.frame(Name, Age)
print (df)

#b
df['Name']
df[['Name']]
df[df['Name']=="Bhavesh"]
df$Name

#c
structure(df)

#d
df$RegNo = c('20BCE0348', '20BCE0338', '20BCE0375', '20BCE0383', '20BKT0013')
df

#e
df[nrow(df)+1,] = c('Adityarajan', 21, '20BCE0329')
df

#f
df = subset(df,select=-c(prod1,prod2))
df

#g
df = df[-5,]
df

#h
df$prod1 = c(20,30,40,20,30)
df$prod2 = c(32,43,23,41,12)
df
with(df,prod1+prod2)
arrange(df,prod1,prod2)
order(df['Age'])

#Question 4
data = data.frame(airquality)
data
dim(data)
colSums(is.na(data))
# Dropping row of missing data
library("tidyr")
data = data %>% drop_na()
dim(data)
# Dropping column of missing data
data = data[ , colSums(is.na(data)) == 0]
dim(data)
# Doing imputation on columns with null values
data$Ozone[is.na(data$Ozone)] = mean(data$Ozone,na.rm=TRUE) # replacing with mean
data$Solar.R[is.na(data$Solar.R)] = median(data$Solar.R,na.rm=TRUE) # replacing with median
colSums(is.na(data))


# Question 5
data = data.frame(iris)
print("Before encoding")
data
iris
unique(data$Species)
label=LabelEncoder$new()
data$Species=label$fit_transform(data$Species)
print("After encoding")
unique(data$Species)

data
unique(data$Species)
#Applying label encoding on Species in iris dataset
data$Species = factor(data$Species, levels=c('setosa', 'versicolor', 'virginica'), labels=c(0,1,2))
unique(data$Species)

library(caret)
# Question 6
data = data.frame(iris)
data
colnames(data)
# Applying onehotencoding on Species column
dummy <- dummyVars(" ~ .", data=data)
final_df <- data.frame(predict(dummy, newdata=data))
final_df
colnames(final_df)




x = c(2,3,3,2,4,5,2)
x[1]
rank(x)

# Question 7
data = data.frame(iris)
data
# Normalizing Sepal.Length column
summary(data$Sepal.Length)
scale_data <- as.data.frame(scale(data$Sepal.Length))
summary(scale_data)

max(iris$Sepal.Length)
# Standardization Sepal.Width column
summary(data$Sepal.Width)
m = mean(data$Sepal.Width)
s = sd(data$Sepal.Width)
nor = (data$Sepal.Width-m)/s
nor


a = c(1,2,3,NA,4)
a
a.sort()
sort(a)
sort(a,na.last=TRUE)
sort(a,na.last=FALSE)
mean(a,na.rm=TRUE)

col1 = c("Bhavesh", "Chetan", "Darshan")
col2 = c("20BCE0348", "20BCE0338", "20BCE0375")
col3 = c(8.99, 8.52, 8.9)
d = data.frame(col1,col2,col3)
d
library(dplyr)
arrange(d,col1)
d[order(as.character(d$col1), decreasing=TRUE)]

arrange(d,col3)


x = c(2,5,3,6,-4,NA,7,Inf,5)
rank(x)
rank(x,na.last=FALSE)
rank(x,na.last="keep")
rank(x,ties.method='average')
rank(x,ties.method='first')
rank(x,ties.method = 'last')
rank(x,ties.method = 'random')
rank(x,ties.method = 'min')
y = c("a", "A", "b","c", "C", "B")
rank(y)
rank(y,ties.method = 'average')
slice(x,n())
slice(x,6)
slice(x,1)
slice(d,1)
slice(d,n())
slice(d,n())
slice_head(d,n=2)
slice_head(d)
slice_min(d,col3)
slice_sample(d,weight_by=col3,n=nrow(d))
table(x)
sort(-table(x))[1]
d[1]
d[[1]]
d[[2]]
d[2,][[1]]
d[2]
d[[2]]
d[2,]
d[,2]
d[,2][[1]]


library(tidyverse)
data("iris")
head(iris)
results <- prcomp(iris[,c(1:4)], scale=TRUE)
summary(results)
str(results)

