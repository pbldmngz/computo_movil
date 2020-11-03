lin.reg = read.csv("SkillCraft1_Dataset.csv")

str(lin.reg)

modelo.reg.lin.0 = lm(LeagueIndex ~ APM)

summary(modelo.reg.lin.0)

predicciones0 = predict(modelo.reg.lin.0)

SSE0 = sum((lin.reg$LeagueIndex - predicciones0) ^ 2)
SSE0

SST = sum((lin.reg$LeagueIndex - mean(lin.reg$LeagueIndex)) ^ 2)
SST

r2.0 = 1 - SSE0/SST
r2.0

plot(lin.reg$APM, lin.reg$LeagueIndex, ylab="League Index", xlab = "Actions per Minute")
abline(modelo.reg.lin.0, col="red")

