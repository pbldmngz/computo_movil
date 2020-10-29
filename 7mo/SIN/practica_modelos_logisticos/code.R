setwd("C:/tu-directorio")

lin.reg = read.csv("wine.csv")
lin.reg.test = read.csv("wine_test.csv")
log.reg = read.csv("quality.csv")
arbol.D = read.csv("stevens.csv")
cluster = read.csv("insurance.csv")

modelo.reg.lin.0 = lm(Price ~ AGST, data = lin.reg)
modelo.reg.lin.1 = lm(Price ~ AGST + HarvestRain + WinterRain + Age + FrancePop, data = lin.reg)
modelo.reg.lin.2 = lm(Price ~ AGST + HarvestRain, data = lin.reg)

summary(modelo.reg.lin.0)
summary(modelo.reg.lin.1)
summary(modelo.reg.lin.2)

predicciones0 = predict(modelo.reg.lin.0, newdata = lin.reg.test)
predicciones1 = predict(modelo.reg.lin.1, newdata = lin.reg.test)
predicciones2 = predict(modelo.reg.lin.2, newdata = lin.reg.test)

SSE0 = sum((lin.reg.test$Price - predicciones0) ^ 2)
SSE1 = sum((lin.reg.test$Price - predicciones1) ^ 2)
SSE2 = sum((lin.reg.test$Price - predicciones2) ^ 2)

SST = sum((lin.reg.test$Price - mean(lin.reg$Price)) ^ 2)

r2.0 = 1 - SSE0/SST
r2.1 = 1 - SSE1/SST
r2.2 = 1 - SSE2/SST

str(log.reg)

##################

install.packages("caTools")
library(caTools)

set.seed(88)
split = sample.split(log.reg$PoorCare, SplitRatio = 0.75)
log.train = subset(log.reg, split == T)
log.test = subset(log.reg, split==F)

modelo.reg.log.1 = glm(PoorCare ~ OfficeVisits + Narcotics, data = log.train, family = binomial)

predict.train.log = predict(modelo.reg.log.1, newdata = log.train, type = "response")
tapply(predict.train.log, log.train$PoorCare, mean)

predict.log = predict(modelo.reg.log.1, newdata = log.test, type = "response")
table(log.test$PoorCare, predict.log > 0.5)

##################

install.packages("ROCR")

library(caTools)
set.seed(3000)
split = sample.split(arbol.D$Reverse, SplitRatio = 0.7)
train.arbol = subset(arbol.D, split==T)
test.arbol = subset(arbol.D, split==F)

install.packages("rpart")
install.packages("rpart.plot")

library(rpart)
library(rpart.plot)

modelo.arbol = rpart(Reverse ~ Circuit + Issue + Petitioner + LowerCourt + Unconst, data = train.arbol, method = "class", minbucket = 25)

prp(modelo.arbol)

pred.arbol = predict(modelo.arbol, newdata = test.arbol, type = "class")

table(test.arbol$Reverse, pred.arbol)

