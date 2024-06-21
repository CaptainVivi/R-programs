install.packages("Hmisc")
install.packages("pastecs")
install.packages("psych")
library(Hmisc)
library(pastecs)
library(psych)

data <- read.csv("D:/vijayasri/housing.csv", header = T)
View(data) #allows us to view the dataset
names(data) #names of the variables
dim(data)
summary(data)

str(data) #structure of the data set
class(data) #type of data

head(data,n = 6) #displays first 6 rows
tail(data,n = 6) #displays last 6 rows

describe(data)

stat.desc(data) #entire dataset
stat.desc(data$price) #price column of the housing dataset

round(cor(data[c('price','bedrooms', 'bathrooms')]),2)# creates a correlation matrix to view the correlation coefficient b/w each pairwise combination of numeric variables in the dataset

sapply(data,function(x)sum(is.na(x)))#count the total number of missing values in each column of the dataset
colSums(is.na(data)) #simlar functionality as sapply function

x <- c(3,7,5,13,20,23,39,23,40,23,14,12,56,23)
print(mean(x)) 
print(prod(x)^(1/length(x)))
print(1 / mean(1/x))

y <- c(3,7,5,13,20,23,39,23,40,23,14,12,56,23,29,56,37,45,1,25,8)
z <- table(y)

print(z)

n <- c(5,5,8,12,15,16)
md <- sum(abs(x-mean(n)))/length(n)
print(md)
print(IQR(n))
