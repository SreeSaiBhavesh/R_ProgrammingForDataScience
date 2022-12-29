data = data.frame(mtcars)
# Checking whether there are null values in the data set
sum(is.na(data))
names(data)
unique(data$gear)
unique(data$vs)
split<-sample.split(data,SplitRatio = 0.65)
train<-subset(data,split==TRUE)
test<-subset(data,split==FALSE)
model<-svm(x=train[,c(-3,-5)],y=as.factor(train$vs),type='C-classification', kernel='linear' )
train[-5]
summary(model)
test$Predicted.vs<-predict(model,test)

ypred = predict(model, newdata = test[,c(-3,-5)])
cm = table(test$vs,ypred)
confusionMatrix(cm)
paste("Precision is: ",posPredValue(cm))
paste("Recall is: ",sensitivity(cm))
paste("Precision is: ",posPredValue(factor(test$Predicted.vs),factor(test$vs),positive = "1"))
paste("Recall is: ",sensitivity(factor(test$Predicted.vs),factor(test$vs),positive = "1"))

#test$Predicted.vs<-predict(model,test)
#confusionMatrix(factor(test$Predicted.vs),factor(test$vs))

# Question3
library(cluster)
library(ClusterR)
data("iris")
x<-iris
x
label=LabelEncoder$new()
x$Species = label$fit_transform(x$Species)
unique(x$Species)
x$Species= x$Species+1
iris <- iris[,-5]
iris
set.seed(120)
kmeans_a <- kmeans(iris,centers=3,nstart=20)
kmeans_a$cluster
cm <- table(factor(x$Species), factor(kmeans_a$cluster))
confusionMatrix(cm)
clusplot(iris[, c("Sepal.Length", "Sepal.Width")],kmeans_a$cluster,
         lines = 0,shade = TRUE,color = TRUE,
         labels = 2,plotchar = FALSE,span = TRUE,
         main = paste("Cluster iris"),xlab = 'Sepal.Length',ylab = 'Sepal.Width')


data = mtcars
dis_matrix = dist(as.matrix(data),method = "euclidean")
dis_matrix
set.seed(240)
clustering = hclust(dis_matrix,method="average")
plot(clustering)
abline(h=110,col='green')
fit = cutree(clustering,k=3)
fit
table(fit)
rect.hclust(clustering,k=3,border="green")


for(i in 1:length(test$Predicted.vs)){
  if(test$Predicted.vs[i]<0.5){
    test$Predicted.vs[i]=0
  }else{
    test$Predicted.vs[i]=1
  }
}
error<-test$vs-test$Predicted.vs
paste(error)
rmse<-sqrt(mean(error)^2)
paste(rmse)


