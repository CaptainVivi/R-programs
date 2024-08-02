mtcars
names(mtcars)

library(ggplot2)
library(caTools)

spl = sample.split(mtcars, SplitRatio = 0.8)
train_set=subset(mtcars, spl==TRUE)
test_set=subset(mtcars,spl==FALSE)

model <- glm(vs ~ wt+disp, data = train_set,
             family = binomial())
model
summary(model)

nrow(test_set)
pred <- predict(model,newdata = test_set,type = "response")
pred

#actual class labels for the prediction
pred<-ifelse(pred>0.5,1,0)
print(pred)


#classification metrics

#confusion matrix
conf_matrix <- table(test_set$vs,pred)
conf_matrix

#Accuracy

m<-mean(pred != test_set$vs) #mean error
print(paste("Accuracy: ",1-m))

acc <- sum(diag(conf_matrix)/sum(conf_matrix))
print(paste("accuracy from confusion matrix: ",round(acc,2)))

#other metrics
library(Metrics)

#Recall
print(paste("REcall: ",recall(test_set$vs,pred)))

#Precision
print(paste("Precision: ",precision(test_set$vs,pred)))

#F1 score
print(paste("F1 score: ",f1(test_set$vs,pred)))

#Accuracy
print(paste("Accuracy: ",accuracy(test_set$vs,pred)))

#ROC CURVE AND AOC VALUE
library(pROC)
roc_ob <-roc(test_set$vs,pred)
roc_ob
auc(roc_ob)

plot(roc_ob, col="red")

#Sensitivity, Specificity
library(caret)

confusionMatrix(conf_matrix)




