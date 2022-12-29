data("BostonHousing")
x <- BostonHousing
str(x)
names(x)
# Checking the null values in the data set
sum(is.na(x))
# Splitting the data into training and test set
library(caTools)
split = sample.split(x,SplitRatio = 0.7)
train = subset(x,split==TRUE)
test = subset(x,split==FALSE)
# Developing Linear Regression Model
model = lm(medv~crim + rm + tax + lstat,data=train)
summary(model)
# Predicting the Results
test$predicted.medv = predict(model,test)
print(test$medv)
print(test$predicted.medv)
# Evaluation Metrics
error = test$medv-test$predicted.medv
rmse = sqrt(mean(error)^2)
cat("RMSE",rmse)
