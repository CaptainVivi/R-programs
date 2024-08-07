mtcars
data<-mtcars
head(data)

data<-na.omit(data)
data<-scale(data)
head(data)

library(factoextra)
library(ggfortify)

fviz_nbclust(data,kmeans,method="wss")
set.seed(123)
km<-kmeans(data,centers = 2,nstart = 25)
km

fviz_cluster(km,data = data)

autoplot(km,data,frame=TRUE)