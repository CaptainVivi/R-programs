#dataset
data("USArrests")
names(USArrests)
head(USArrests)

#assign the dataset to a dataframe
df<- USArrests
#remove rows with missing values
df<-na.omit(df)

#scales all column values
df<-scale(df)
head(df)

#for visualisation
#install.packages("factoextra")
library(factoextra)

#Elbow test : to find optimal number of clusters
fviz_nbclust(df,kmeans,method = "wss")

#implement kmeans algorithm using kmeans()
set.seed(123)
#optimal number of clusters=4
km<-kmeans(df,centers = 4,nstart = 25)

#view results
km
km$cluster
km$centers

#plotting the results 1 using factoextra library
fviz_cluster(km,data = df)
#plotting the results 2 using ggfortify library
install.packages("ggfortify")
library(ggfortify)
autoplot(km,df,frame=TRUE)

#mean of each cluster
aggregate(df,by=list(cluster=km$cluster),mean)

#binding cluster column to the dataframe
c<-cbind(df,clusterno=km$cluster)
c
head(c)