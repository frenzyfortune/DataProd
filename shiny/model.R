library(randomForest)
library(caret)
data(iris)
inTrain <- createDataPartition(iris$Species,p=0.7,list=F)
train <- iris[inTrain,]
test <- iris[-inTrain,]
fit <- train(Species~.,data=train,method="rf")
save(fit,file="rfmodel.RData")