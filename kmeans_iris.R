iris
d<-iris

#Eliminate Species column
library(dplyr)
d<-select(d,c(1:4))
head(d)

d<-scale(d)
head(d)

library(factoextra)
fviz_nbclust(d,kmeans,method = "wss")
set.seed(123)
km<-kmeans(d,centers = 2,nstart = 25)
km

fviz_cluster(km,data = d)

library(ggfortify)
autoplot(km,d,frame=TRUE)