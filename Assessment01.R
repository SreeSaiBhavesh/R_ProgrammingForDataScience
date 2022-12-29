x = as.integer(readline(prompt = "Enter the Number: "))
vec1 = c(2,4,6,8,10,3,7)
vec2 = c(1,3,5,7,9,4,6)
vec2[1]
vec1+vec2
vec1-vec2
vec1*vec2
vec1/vec2
vec1%%vec2
vec1%/%vec2
vec1^vec2
func <-function(){
  n = 3
  m = 4
  n*m
}
func()

vec1 = c(2,4,6,8,10,3,7)
vec2 = c(1,3,5,7,9,4,6)
vec1<vec2
vec1>vec2
vec1<=vec2
vec1>=vec2
vec1==vec2
vec1!=vec2

vec1 = c(2,4,6,8,10,3,7)
vec2 = c(1,3,5,7,9,4,6)
vec1&vec2
vec1|vec2
vec1&&vec2
vec1||vec2


a <- 10
a
20 -> b
b


a:b
vec1%in%vec2
vec1%*%vec2



num = as.integer(readline(prompt = "Enter the Number: "))
if(num%%2==0){
  paste(num, "is a Even Number")
}else{
  paste(num, "is a Odd Number")
}

data(iris)
mark = as.integer(readline(prompt = "Enter the mark: "))
if(mark>=90 && mark<=100){
  print("Grade is S")
}else if(mark>=80 && mark<90){
  print("Grade is A")
}else if(mark>=70 && mark<80){
  print("Grade is B")
}else if(mark>=60 && mark<70){
  print("Grade is C")
}else if(mark>=50 && mark<60){
  print("Grade is D")
}else if(mark>=40 && mark<50){
  print("Grade is E")
}else{
  print("Grade is F")
}
scan(what = integer())

n1 = as.integer(readline(prompt = "Enter 1st Number: "))
n2 = as.integer(readline(prompt = "Enter 2nd Number: "))
print("Enter add for Addition")
print("Enter sub for Subtraction")
print("Enter mul for Multiplication")
print("Enter div for Division")
cal = readline(prompt = "Enter the type of Operation you want: ")
result = switch(cal, "add" = cat("Addition = ",n1+n2),
                "sub" = cat("Subtraction = ",n1-n2),
                "mul" = cat("Multiplication = ",n1*n2),
                "div" = cat("Division = ",n1/n2))


fac = as.integer(readline(prompt = "Enter a Number: "))
res = 1
if(fac<0){
  print("Sorry, Factorial doesn't exist for negative numbers")
}else if(fac==0){
  print("Factorial of 0 is 1")
}else{
  for(i in 1:fac){
    res = res*i
  }
  print(paste("The Factorial of", fac, "is: ", res))
}

num = as.integer(readline(prompt = "Enter a number: "))
temp = num
sum = 0
while(temp>0){
  lastdigit = temp%%10
  sum = sum+(lastdigit^3)
  temp = floor(temp/10)
}

if(num==sum){
  print(paste(num, "is a Armstrong number"))
}else{
  print(paste(num, "is not an armstrong number"))
}


sum = 0
i = 1
repeat{
  print(i)
  sum=sum+i
  i=i+1
  if(sum>100){
    break
  }
}


for(i in 1:10){
  if(i==3){
    break
  }
  print(i)
}


add <- function(x,y){
  paste("Addition of 2 given numbers",x+y)
}

# Default argument passage
sub <- function(x=5, y=2){
  paste("Subtraction of 2 given numbers",x-y)
}


#function without arguments
mul <- function(){
  num1 = as.integer(readline(prompt = "Enter the Number1: "))
  num2 = as.integer(readline(prompt = "Enter the Number2: "))
  paste("Multiplication of 2 given numbers",num1*num2)
}

div <- function(x=10,y=5){
  paste("Division of 2 given numbers", x/y)
}

module <- function(x=6,y=4){
  paste("Modulo of 2 given numbers", x%%y)
}

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
structure(iris)



data <- iris
data
# Plot function
plot(data$Sepal.Length,data$Sepal.Width)
# Bar plot
barplot(data$Petal.Width,xlab="PetalWidth",ylab="Width")
# Scatter plot
plot(x=data$Sepal.Length,y=data$Sepal.Width,xlab="SepalLength",ylab="SepalWidth")
# Box plot
boxplot(data$Sepal.Length-data$Petal.Length,data=data,xlab="Lengths",ylab="Petal and Sepal Length Difference",main="BoxPlot")
# Correlation
cor(data$Sepal.Length, data$Sepal.Width, method = c("pearson", "kendall", "spearman"))
# Plot in seperate window
dev.new(width=300, height=150, unit="px")
plot(data$Sepal.Length,data$Sepal.Width, type="b")
# or
windows();
plot(data$Sepal.Length,data$Sepal.Width, type="b")







x = 10
class(x)
as.integer(x)
class(x)
class(as.integer(x))
as.integer(x) -> y
class(y)
y = 12.0
class(y)
scan()
y = 12L
class(y)

a = list(1,2,3)
a
a = unlist(a)
a
data = list("Red", "Green", c(1,2,3), TRUE, 32.4, 12)
data
data[2]
names(data) = c("C1", "C2", "C3", "C4", "C5", "C6")
data
data$C3
data[6] = 100
data
data[7] = 12
data
data[9] = 20
data
data[9] = NULL
data
data[8] = NULL
data

x = c(2,4,NA,5,6)
sort(x)


M=matrix(c(3:14),nrow=4,byrow=TRUE)
M
rownames = c("R1","R2","R3","R4")
colnames = c("C1","C2","C3")
M = matrix(c(3:14),nrow=4, byrow=TRUE,dimnames=list(rownames,colnames))
M
M[1,3]
M[2,]
M[,3]

p = array(1:9,dim=c(3,3,2))
p
rownames = c("row1", "row2", "row3")
colnames = c("col1", "col2", "col3")
mnames=c("M1","M2")
p=array(c(1:9,2:10),dim = c(3,3,2), dimnames = list(rownames, colnames, mnames))
p
p = array(1:9,dim=c(3,3),dimnames=list(rownames,colnames))
p


a = c('g', 'r', 'b', 'g', 'b')
factor(a)
print(nlevels(factor(a)))
for(i in 1:5){
  print(i)
}


x=iris[c(1,2,55,56,101,102),]
y=one_hot(as.data.table(x))
install.packages(”data.table”)
y


z = c(2,4.5,6,8)
z[1]
z[-1]
z[nrow(z)]
z[ncol[z]]
z[length(z)]
a = list(1,2,c(12,3,4),TRUE,12.5)
a[0]
a[1]
a[6] = 123
a
a[5] = 12.1
a

iris
filter(iris, iris$Sepal.Length<5)
filter(iris, between(iris$Sepal.Length,3,5))
filter(iris, near(iris$Sepal.Length,5))
sort(iris$Sepal.Length, decreasing = TRUE)
x = c(2,4,2,7,NA)
sort(x, decreasing = TRUE)
sort(x, decreasing = TRUE, na.last=FALSE)
y = data.frame(col=c('x','y','x','z'), col2=c(40,45,35,40), col3=45)
arrange(y)
arrange(y,desc(col2))
arrange(y,col2,col3)
order(x)
order(x,na.last = FALSE)
slice(iris,1)
slice(iris,n())
slice(iris,n()-5:n())
iris
rank(x,ties.method = "max")
x
z = data.frame(5,'t',3.5,4.5)
rbind(z,t)

fa <- factor(c("High", "xyz", "Low", "Low", "Medium", "High"))
fa
summary(fa)
ordered(fa)
as.numeric(fa)
mean(as.numeric(fa))
is.na(iris)
data = airquality
data
colSums(is.na(data))
is.na(data$Ozone)
data$Ozone[is.na(data$Ozone)]
data$Ozone[is.na(data$Ozone)] = mean(data$Ozone,na.rm=TRUE)
data$Ozone[data$Ozone==7.00]
select(data, starts_with("Oz"))
data %>% fill(Ozone,.direction="down")
fill(data, )
sum(data$Ozone)/nrow(data)
nrow(data$Ozone)
names(iris)
ncol(iris)
iris[,1:]
sum(data$Ozone)
print(group_by(data,Ozone))


v=c(13,22,28,7,31)
w=c(11,13,32,6,35)
x=c(12,22,15,34,35)
#Giving a name to the chart file
png(file = "multi_line_graph.jpg")
plot(v,type = "o",col="green",xlab="Month",ylab="Temperature")
lines(w, type = "o", col = "red")
lines(x, type = "o", col = "blue")
#Saving the file
dev.off()
scan(what=double())
type(3+2i)
a = 3+2i
class(a)
