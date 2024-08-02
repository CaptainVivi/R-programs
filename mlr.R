mtcars
names(mtcars)

input <- mtcars[,c("mpg","disp","hp","wt")] #multiple linear regression

model <-lm(mpg ~ disp+hp+wt, data = input)
print(model)
summary(model)
