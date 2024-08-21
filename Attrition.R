library(dplyr)
library(ggplot2)
library(caTools)
library(caret)

#load the dataset
data<-read.csv("D:\\vijayasri\\R programs\\Attrition.csv")

#inspect the dataset
head(data)

#print the column names
names(data)

sum(is.na(data))

#Detection of Outliers
#identify outliers in Monthly_Income
#This creates a boxplot to visually identify outliers in the Monthly_Income variable
boxplot(data$MonthlyIncome, main = "Boxplot of Monthly Income")

#Remove outliers (using Interquartile Range (IQR) method)

#calculate the first quartile (Q1), third quartile(Q3) and the IQR. The IQR is the range between the Q1 and Q3 and is used to detect outliers
Q1 <- quantile(data$MonthlyIncome, 0.25)
Q3 <- quantile(data$MonthlyIncome, 0.75)
IQR <- Q3-Q1

#The data is then filtered to retain only those observations where MonthlyIncome falls within the range of [Q1 - 1.5 * IQR, Q3 - 1.5 * IQR].
data<- data %>%filter(MonthlyIncome >= (Q1 - 1.5 * IQR) &
                        MonthlyIncome <= (Q3 - 1.5 * IQR))
data

#Visualization

ggplot(data,aes(x= Attrition))+
  geom_bar(fill = "violet")+
  labs(title = "Attrition Distribution",x ="Attrition",y = "count")

ggplot(data,aes(x=JobSatisfaction, fill = Attrition))+
  geom_bar(position ="dodge")+
  labs(title ="Job satisfaction vs Attrition")

ggplot(data,aes(x= Attrition, y=MonthlyIncome))+
  geom_boxplot()+
  labs(title = "Monthly Income vs Attrition",x ="Attrition",y = "Monthly Income")


#correlation
library(dplyr)
cordata <- data %>% 
  select(c("DistanceFromHome", "MonthlyIncome", "NumCompaniesWorked",
           "TotalWorkingYears", "YearsAtCompany", "YearsInCurrentRole",
           "YearsSinceLastPromotion","YearsWithCurrManager",
           "Age"))
cormatrix <- cor(cordata)
round(cormatrix, 2)
names(data)

install.packages("ggcorrplot")
library(ggcorrplot)

ggcorrplot(cormatrix, hc.order = TRUE,outline.color = "white", lab = TRUE,
           colors = c("#F8EDEB","#FCD5CE","#F49595"), lab_size = 2.5) + labs(title = "Correlation of Numeric Variables")

ggplot(data,aes(x= YearsAtCompany, fill=Attrition,color=Attrition))+
  geom_histogram()+
  labs(title = "Distribution of Years at Company")

#chi-square test

chisq.test(data$BusinessTravel, data$Attrition)

#SPLITTING THE DATASET
library(caTools)
trainData$Attrition=factor(trainData$Attrition)
testData$Attrition=factor(testData$Attrition)
set.seed(123)
sp=sample.split(data$Attrition,SplitRatio = 0.8)
trainData <- subset(data, sp==TRUE)
testData <- subset(data, sp== FALSE)
nrow(trainData)

#model building
library(randomForest)


str(trainData$Attrition)  # Check the structure of the response variable
trainData$Attrition <- as.factor(trainData$Attrition)
rf_model <- randomForest(Attrition ~ ., data = trainData, ntree = 100, importance = TRUE)
print(rf_model)


rf_pred <- predict(rf_model, testData)
print(rf_pred)

varImpPlot(rf_model)