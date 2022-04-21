library("Rcmdr")
library(BSDA)

# Exercicio 1
A = c(7.8, 5.1, 8, 6.5, 7.4, 8.2, 6.1)
Amean1 = mean(A)
B = c(9.2, 8.4, 9.5, 7.3, 9.5, 8.9, 7.1)
df1 = data.frame(A, B)

shapiro.test(A)
shapiro.test(B)

# com esse argumento "less", VOCE DECLARA Q A HIPOTESE ALTERNATIVA
# É QUE A MÉDIA  de a é menor que a média de b
# se o p-valor for abaixo do nivel de significancia (0.05)
# voce rejeita a hipotese nula, ou seja, a hiposte alternativa
# (que a media é menor) é verdadeira
t.test(df1$A, df1$B, var.equal = TRUE, alternative = 'less')


# LETRA b)

# Exercicio 2
# Null hypothesis > A temperatura média do forno é menor que 560 graus
# One hypothesis > A temperatura média do forno é maior que 560 graus
# Accept the Null hyp. > A temperatura media do forno é menor que 560 graus
# A média verdadeira da população de temperatura do forno está abaixo de 560 para a hipotese nula


C2 = c(510, 525, 530, 535, 565, 565, 560, 540, 570, 545, 575, 565, 555, 550, 535, 520, 560, 560, 545, 550)
shapiro.test(C2)
samplemeanc2 = mean(C2)
meanpopc2 = 560
sdpopc2 = 15
sdsamplec2 = sd(C2)

#by hand
z2 = (samplemeanc1 - meanpopc2) / (sdpopc2 /(length(C2) ^ 0.5))
z2
z.test(C2,
  mu = meanpopc2,
  sigma.x = sdpopc2,
  conf.level = 0.95,
)



# Letra a)

# Exercicio 3
# 1 sample t

# Exercicio 4

antes = c(85.5, 84.7, 84.9, 86.3, 83.8, 84.2, 82.9, 83.5, 84.8, 85.3)
depois = c(96.7, 90.2, 90.5, 83.3, 77.6, 86.9, 68.5, 66.1, 87.7, 55.6)

t.test(antes, depois) # AS MEDIAS DERAM IGUAIS, FALSO

# Letra b)

# Exercicio 5
# Para a hipotese da media da populacao ser 15, o pvalue deu acima
# 0.05, ou seja a media n ultrapassa os 15 minutos
tempo = c(14, 13, 17, 15, 12, 18, 15, 13, 14, 19, 17, 14, 16, 17, 15)
t.test(tempo, mu = 15)
#  Letra b)

# Exercicio 6

materialatual = c(191.1, 200.6, 201.4, 200.5, 200.2, 198.7, 199.7, 199.1, 200.5, 198.8)
materialproposto = c(203.3, 205.5, 205.3, 205.4, 203.8, 205.8, 205.2, 205.5, 204.4, 206.3)

df6 = data.frame(materialatual, materialproposto)

# ANOVA TEST
var.test(materialatual, materialproposto, alternative = "two.sided")


# Letra a)

# Exercicio 6
materialatual = c(199.1, 200.6, 201.4, 200.5, 200.2, 198.7, 199.7, 199.1, 200.5, 198.8)
materialproposto = c(203.3, 205.5, 205.3, 205.4, 203.8, 205.8, 205.2, 205.5, 204.4, 206.3)

shapiro.test(materialatual)

var.test(materialatual, materialproposto)

# Letra b)

# Exercicio 8
# com esse argumento "less", VOCE DECLARA Q A HIPOTESE ALTERNATIVA
# É QUE A MÉDIA  de a é menor que a média de b
# se o p-valor for abaixo do nivel de significancia (0.05)
# voce rejeita a hipotese nula, ou seja, a hiposte alternativa
# (que a media é menor) é verdadeira
turnoA = c(113, 122, 138, 124, 139, 118, 139, 122, 121, 131, 129, 133, 144, 124, 153)
shapiro.test(turnoA)
turnoB = c(141, 152, 147, 147, 161, 147, 169, 146, 147, 144, 157, 145, 136, 144, 154)
shapiro.test(turnoB)

t.test(turnoA, turnoB, alternative = 'less')

t.test(turnoA, turnoB)

# letra d)

# Exercicio 9
tempo9 = c(140, 144, 150, 145, 142, 139, 134, 152, 147, 146, 153, 145, 141, 141, 137, 149, 143, 144)
t.test(tempo9, mu = 147)

# letra a)

# Exercicio 10
antiga10 = c(52, 49, 50, 49, 52)
nova10 = c(51, 48, 54, 52, 53)
shapiro.test(antiga10)
shapiro.test(nova10)

t.test(antiga10, nova10, alternative = 'less')
# A hipotese alternativa eh de que a media de antiga
# eh menor do que nova, p value deu acima de 0.05, n
# devemos rejeitar a hipotese nula. A hipotese alternativa
# n eh verdadeira

# letra a)


# Exercicio 11
df11 = read.csv("/home/mr-alden/reps/statistics/listas/exerc11.csv")
anova.res11 = aov(prazo ~ empresa, data = df11)
summary(anova.res11)

# Exercicio 12
df12 = read.csv("/home/mr-alden/reps/statistics/listas/exerc12.csv")
anova.res12 = aov(prazo ~ empresa, data = df12)
summary(anova.res12)

# Exercicio 13
# III

# Exercicio 14
# letra b)

# Exercicio 15
x = c(259.3, 267.5, 281.6, 279.5, 293.7, 289.9, 295.4)
y = c(151.3, 172.4, 175.6, 180.1, 189.3, 195.9, 198.73)