install.packages("MASS")
library(MASS)
library(ggplot2)

Boston
names(Boston)

model<- lm(lstat ~ medv)
ggplot(Boston, aes(lstat,medv))+geom_point()+geom_smooth(method = "lm", col="pink")

new_lstat <- 7.93
prei <- predict(model,newdata = data.frame(lstat=new_lstat))
print(prei)