install.packages("rpart")
install.packages("rpart.plot")

library(rpart)
library(rpart.plot)

data(iris)
tree_model <- rpart(Species ~ ., data = iris, method = "class")

rpart.plot(tree_model)
pred <- predict(tree_model, iris, type = "class")

mean(pred == iris$Species)