file <- read.csv("D:\\vijayasri\\R programs\\ctc_data.csv")
head(file)
names(file)
nrow(file)
ncol(file)

library(tidyverse)  
library(caTools) 
library(randomForest) 

file <- file %>% select(-S.No.)
names(file)
file$College <- as.factor(file$College)
file$Role <- as.factor(file$Role)
file$City.type<- as.factor(file$City.type)

sum(is.na(file))
file <- na.omit(file)  

set.seed(123)
sp = sample.split(file$CTC, SplitRatio = 0.8)
train_set_ctc <- subset(file, sp == TRUE)
test_set_ctc <- subset(file, sp == FALSE)

set.seed(123)
train_set_ctc$CTC<-as.factor(train_set_ctc$CTC)
test_set_ctc$CTC<-as.factor(test_set_ctc$CTC)
ctc_rf_model <- randomForest(CTC ~ ., data = train_set_ctc, ntree = 100, importance = TRUE)

ctc_rf_model

predictions <- predict(ctc_rf_model, newdata = test_set_ctc)
print(predictions)


library(Metrics)

test_set_ctc$CTC <- as.numeric(test_set_ctc$CTC) 
predictions <- as.numeric(predictions) 

mae <- mae(test_set_ctc$CTC, predictions)
mse <- mse(test_set_ctc$CTC, predictions)
rmse <- rmse(test_set_ctc$CTC, predictions)

print(paste('Mean Absolute Error (MAE):', round(mae, 2)))
print(paste('Mean Squared Error (MSE):', round(mse, 2)))
print(paste('Root Mean Squared Error (RMSE):', round(rmse, 2)))

