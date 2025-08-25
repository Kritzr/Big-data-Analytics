#install.packages("e1071")
library(e1071)

data(iris)

# Train Naive Bayes
model <- naiveBayes(Species ~ ., data=iris)

# Predict
pred <- predict(model, iris)

# Accuracy
mean(pred == iris$Species)
