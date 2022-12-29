x = read.csv("D:\\VIT\\Sem5\\ProgrammingForDS\\Lab\\Cancer_Data.csv")
names(x)
x = x[-c(1,33)]
names(x)
# Checking for null values in dataset
sum(is.na(x))
colSums(is.na(x))
#Label Encoder
library(superml)
label = LabelEncoder$new()
x$diagnosis=label$fit_transform(x$diagnosis)
head(x)
# Splitting data into train and test sets
library(caTools)
split = sample.split(x$diagnosis,SplitRatio = 0.7)
train = subset(x,split==TRUE)
test = subset(x,split==FALSE)
# Applying SVM 
install.packages('e1071')
library(e1071)
train[-1]=scale(train[-1])
test[-1]=scale(test[-1])
names(train)
classifier = svm(formula=diagnosis~.,data=train,type='C-classification',
                 kernel='linear')
# Making Predictions
diag_pred = predict(classifier,newdata=test[-1])
# Evaluating results
cm = table(test[,1],diag_pred)
print(cm)
