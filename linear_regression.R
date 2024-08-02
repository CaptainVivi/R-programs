x <- c(1,2,4,7,11)
y <- c(2,7,9,10,13)

model <-lm(y ~ x) #linear regression
plot(x,y) #scatterplot
abline(model, col ="blue") #to display the regression line
coef(model) #coeffient of y

new_x <-7 #test data
prediction <- predict(model,newdata = data.frame(x=new_x))
print(prediction)

summary(model) #displays statistical values of model variable

#using mtcars dataset

mtcars
names(mtcars)

model <-lm(mpg ~ hp,data=mtcars)
plot(mtcars$mpg,mtcars$hp)
abline(model,col="green")
library(ggplot2)
ggplot(mtcars, aes(mpg,hp))+geom_point()+geom_smooth(method = "lm", col="pink")

coef(model)

new_hp <-150
pred <- predict(model, newdata = data.frame(hp=new_hp))
print(pred)
