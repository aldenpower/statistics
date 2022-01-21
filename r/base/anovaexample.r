valores = c(1.5, 1.2, 1.4, 1.6, 1.55, 10.5, 10.2, 10.4, 10.6, 10.55)
valores2 = c(1.5, 1.2, 1.4, 1.6, 1.55, 1.33, 1.22, 1.41, 1.59, 1.48)
# A = c(1.5, 1.2, 1.4, 1.6, 1.55)
# B = c(10.5, 10.2, 10.4, 10.6, 10.55)

fac = factor(rep(1:2,each = 5))
dados = data.frame(valores, fac)

boxplot(dados$valores ~ dados$fac)

anova(lm(valores1 ~ fac, data = dados))
anova(lm(valores2 ~ fac, data = dados))