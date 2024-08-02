#dataframe
patient <- data.frame(Age = c(45,23,45,80,68),
                      Cholestrol = c(200,170,230,190,150),
                      Disease = c(1,0,1,0,1))
patient

model <- glm(Disease ~ Age + Cholestrol, data = patient,
             family = binomial())

model

summary(model)

#prediction and probability
new_data <- data.frame(Age=64, Cholestrol=170)
prediction <- predict(model,newdata = new_data, type="response")
print(prediction)