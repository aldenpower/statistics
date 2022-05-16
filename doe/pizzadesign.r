library(SixSigma)
pizzaDesign <- expand.grid(
    flour = gl(2, 1, labels = c("-", "+")),
    salt = gl(2, 1, labels = c("-", "+")),
    bakPow = gl(2, 1, labels = c("-", "+")),
    score = NA
)

pizzaDesign$ord <- sample(1:8, 8)
pizzaDesign[order(pizzaDesign$ord),]

ss.data.doe1

aggregate(
        score ~ flour + salt + bakPow,
        FUN = mean,
        data = ss.data.doe1
)

ss.data.doe1$score <- c(5.33, 6.99, 4.23, 6.61, 2.26, 5.75, 3.26, 6.24, 5.7, 7.71, 5.13, 6.76, 2.79, 4.57, 2.48, 6.18)

doe.model1 <- lm(score
                 ~ flour + salt + bakPow +
                flour * salt +
                flour * bakPow +
                salt * bakPow +
                flour * salt * bakPow,
                data = ss.data.doe1)

summary(doe.model1)

doe.model2 <- lm(score
                 ~ flour + salt + bakPow,
                data = ss.data.doe1)

summary(doe.model2)
coef(doe.model2)

doe.model3 <- lm(score
                 ~ flour + bakPow,
                data = ss.data.doe1)

summary(doe.model3)

coef(doe.model3)

predict(doe.model3)

confint(doe.model3)
