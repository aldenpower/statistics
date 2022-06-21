library(SixSigma)
library(ggplot2)
library(nortest)

# Carregando dados
csv <- read.csv('helicoptero_doe2.csv')

tempos <- c(csv$tempo3, csv$tempo4)

shapiro.test(tempos)

tempo_medio <- (csv$tempo3 + csv$tempo4) / 2

shapiro.test(tempo_medio)

doe <- data.frame(altura = csv$altura, comp = csv$comp, larg = csv$larg, clips = csv$clips, tempo_medio)


doe.model1 <- lm(tempo_medio ~ altura + comp + larg + clips,
data = doe)

doe.model2 <- lm(tempo_medio ~ altura + comp + larg + clips +
altura * comp + altura * larg + altura * clips + comp * larg + comp * clips + larg * clips,
data = doe)

doe.model3 <- lm(tempo_medio ~ altura + comp + larg + clips +
altura * comp + altura * larg + altura * clips + comp * larg + comp * clips + larg * clips +
altura * comp * larg + altura * comp * clips + comp * larg * clips + altura * clips * larg,
data = doe)

doe.model4 <- lm(tempo_medio ~ altura + comp + larg + clips +
altura * comp + altura * larg + altura * clips + comp * larg + comp * clips + larg * clips +
altura * comp * larg + altura * comp * clips + comp * larg * clips + altura * clips * larg +
larg * clips * altura * comp,
data = doe)

doe.model1
doe

summary(doe.model1)
coef(doe.model1)

doe.model2
summary(doe.model2)
coef(doe.model2)

doe.model3
summary(doe.model3)
coef(doe.model3)

doe.model4
summary(doe.model4)
coef(doe.model4)

# altura
plot(c(-1, 1), ylim = range(doe$tempo_medio),
coef(doe.model1)[1] + c(-1, 1) * coef(doe.model1)[2],
type="b", pch=16)
abline(h=coef(doe.model1)[1])

# comprimento
plot(c(-1, 1), ylim = range(doe$tempo_medio),
coef(doe.model1)[1] + c(-1, 1) * coef(doe.model1)[3],
type="b", pch=16)
abline(h=coef(doe.model1)[1])

# largura
plot(c(-1, 1), ylim = range(doe$tempo_medio),
coef(doe.model1)[1] + c(-1, 1) * coef(doe.model1)[4],
type="b", pch=16)
abline(h=coef(doe.model1)[1])

# clip
plot(c(-1, 1), ylim = range(doe$tempo_medio),
coef(doe.model1)[1] + c(-1, 1) * coef(doe.model1)[5],
type="b", pch=16)
abline(h=coef(doe.model1)[1])


predict(doe.model1)
confint(doe.model1)

prinEf <- data.frame(Factor = rep(c("Altura",
                                    "Comprimento"), each = 2),
                     Level = rep(c(-1, 1), 2),
                     Score = c(aggregate(tempo_medio ~ altura, FUN = mean, data =
                                           doe)[,2],
                               aggregate(tempo_medio ~ comp, FUN = mean, data =
                                           doe)[,2]))
p <- ggplot(prinEf,
              aes(x = Level, y = Score)) +
  geom_point() +
  geom_line() +
  scale_x_continuous(breaks = c(-1, 1)) +
  facet_grid(. ~ Factor) +
  geom_abline(intercept = mean(ss.data.doe1$score),
              slope = 0, linetype = "dashed")
print(p)

# MODELO APENAS COM ALTURA E COMPRIMENTO

intEf <- aggregate(tempo_medio ~ altura + comp,
FUN = mean, data = doe)
p <- ggplot(intEf, aes(x = altura, y = tempo_medio, color = comp
)) +
geom_point() +
geom_line(aes(group=comp)) +
geom_abline(intercept = mean(doe$tempo_medio),
slope = 0,
linetype = "dashed",
color = "black")
print(p)