library(tidyverse)
library(factoextra)

data<-read.csv("D:\\vijayasri\\R programs\\distribution_center.csv")
head(data)
names(data)

nrow(data)

data$Cost_of_labour_numeric <- ifelse(data$Cost.of.labour == "high", 1,0)
data$Cost_of_labour_numeric

features <- data[, c("Distance_Feature", "Daily_Demand", "Cost_of_labour_numeric")]
head(features)

scaled_features <- scale(features)
head(scaled_features)

set.seed(123)
fviz_nbclust(scaled_features, kmeans, method = "wss")

set.seed(123)
kmeans_result <- kmeans(scaled_features, centers = 4, nstart = 25)
kmeans_result

data$Cluster <- as.factor(kmeans_result$cluster)
data

fviz_cluster(kmeans_result, data = scaled_features,
             geom ="point",
             ellipse.type = "convex",
             ggtheme = theme_bw())

cluster_summary <- data %>%
  group_by(Cluster) %>%
  summarise(
    Avg_Distance = mean(Distance_Feature),
    Avg_Demand = mean(Daily_Demand),
    High_Labour_Cost_Ratio = mean(Cost_of_labour_numeric),
    Count = n()
  )
cluster_summary

library(ggplot2)

ggplot(data, aes(x = Distance_Feature, y = Daily_Demand, colour = Cluster)) +
  geom_point() +
  labs(title = "Distribution Centers: Distance vs Daily Demand",
       x = "Distance Feature", y = "Daily Demand") + 
  theme_minimal()
