library(SixSigma)
library(ggplot2)
library(nortest)

time <- read.csv("./doe/doeheli/time.csv")
tempos <- c(time$tempo1, time$tempo2)
tempos
shapiro.test(time$tempo1) # p-value = 0.8439
shapiro.test(time$tempo2) # p-value = 0.8439
shapiro.test(tempos) # p-value = 0.8439

time.medio <- (time$tempo1 + time$tempo2) / 2
doedf <- data.frame(time, time.medio)

doedf

doe.model1 <- lm(
    time.medio ~ 
    altura + comp + larg + clips,
    data = doedf
)

doe.model2 <- lm(
    time.medio ~
    altura,
    data = doedf
)

summary(doe.model1)
summary(doe.model2)
