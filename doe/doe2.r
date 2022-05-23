library(SixSigma)
library(ggplot2)
library(nortest)


pizzaDesign8 = expand.grid(flour = gl(2, 1, labels = c("-"
                                                        , "+")),
                            salt = gl(2, 1, labels = c("-", "+")),
                            bakPow = gl(2, 1, labels = c("-", "+")),
                            temp = gl(2, 1, labels = c("-", "+")),
                            time = gl(2, 1, labels = c("-", "+")),
                            score = NA)

doe.model8 = lm(score ~ flour + salt + bakPow + temp + time
                flour * salt + flour * bakPow + flour * temp +
                temp * salt + bakPow
)

doe.model9 <- lm(score ~ flour + salt + bakPow + temp + 
                 flour * salt + 
                 flour * bakPow +
                 salt * bakPow + 
                 salt * temp + 
                 salt * time +
                 temp * time + 
                 flour * salt * time +
                 salt * bakPow * temp + 
                 salt * bakPow * time + 
                 salt * temp * time +
                 flour * salt * temp * time + 
                 salt * bakPow * temp * time
                 ,data = ss.data.doe2)

# analisar e apresentar
doe.model11 <- lm(score ~ flour + salt + bakPow + temp + time +
                 flour * salt + 
                 flour * bakPow +
                 flour * temp + 
                 flour * time +
                 salt * bakPow + 
                 salt * temp + 
                 salt * time +
                 temp * time
                 ,data = ss.data.doe2)

summary(doe.model11)
