library(randomForest)
library(Metrics)
library(caTools)

data("iris")
head(iris)
names(iris)

sp=sample.split(iris,SplitRatio = 0.8)
train=subset(iris,sp==TRUE)
test=subset(iris,sp==FALSE)
set.seed(123)
rf_model <- randomForest(Species~., data=train,ntree=100)
rf_model

pred<-predict(rf_model,newdata = test, type="class")
pred

plot(rf_model)
importance(rf_model)
varImpPlot(rf_model)