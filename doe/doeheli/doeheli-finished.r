library(SixSigma)
library(ggplot2)
library(nortest)

time <- read.csv("./doe/doeheli/time.csv")
tempos1 <- c(time$tempo1, time$tempo2)
tempos2 <- c(time$tempo3, time$tempo4)

tempos2

shapiro.test(time$tempo1)
shapiro.test(time$tempo2)
shapiro.test(tempos1) # p-value = 0.8439
shapiro.test(tempos2) # p-value = 0.3773

time.medio1 <- (time$tempo1 + time$tempo2) / 2
time.medio2 <- (time$tempo3 + time$tempo4) / 2
doedf <- data.frame(time, time.medio1, time.medio2)

doedf

doe.model1 <- lm(
    time.medio1 ~ 
    altura + comp + larg + clips,
    data = doedf
)

doe.model2 <- lm(
    time.medio1 ~
    altura,
    data = doedf
)

doe.model3 <- lm(
    time.medio2 ~ 
    altura + comp + larg + clips,
    data = doedf
)

doe.model4 <- lm(
    time.medio2 ~
    altura,
    data = doedf
)

summary(doe.model1)
summary(doe.model2)
summary(doe.model3)
summary(doe.model4)
