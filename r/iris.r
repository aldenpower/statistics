library("tikz")
# Inserir dados "CSV" em um data frame.
data.iris <- read.csv("./seaborn-data/iris.csv", header = TRUE, sep = ",")
data.iris
#View(data.iris)
data.iris$sepal_length
# Realizar teste de normalidade
shapiro.test(data.iris$sepal_width)
#shapiro.test(data.iris$sepal_length)
# separate dataframe
data.iris.species = split(data.iris, f=factor(data.iris$species))
data.iris.species.setosa = data.iris.species$setosa
# summary(data.iris.species.setosa$sepal_width)
setosa.sepal.width = data.iris.species$setosa$sepal_width

shapiro.test(data.iris.species$setosa$sepal_length)

# stddev
std_sepal = sd(setosa.sepal.width)
sd(data.iris$sepal_length)
sd(data.iris$petal_width)
sd(data.iris$petal_length)
# mean
mean_sepal = mean(setosa.sepal.width)
mean(data.iris$sepal_length)
mean(data.iris$petal_width)
mean(data.iris$petal_length)

# Informacoes basicas dos dados
summary(data.iris)
summary(data.iris$sepal_width)

# Gerar histograma
#hist(data.iris$sepal_width, freq = TRUE, col = "yellow")
hist(data.iris$sepal_width, freq = FALSE, col = "yellow")
hist(data.iris$sepal_length, freq = FALSE, col = "#00ff33")
hist(data.iris$petal_width, freq = FALSE, col = "#ff00ea")
hist(data.iris$petal_length, freq = FALSE, col = "#ff6f00")

# Gerar funcao densidade dos dados
lines(density(data.iris$sepal_width), lty = 2, lwd = 2)
lines(density(data.iris$sepal_length), lty = 2, lwd = 2)
lines(density(data.iris$petal_width), lty = 2, lwd = 2)
lines(density(data.iris$petal_width), lty = 2, lwd = 2)
# Gerar funcao probabilidade dos dados

curve(dnorm(x, 3.057, 0.4358663), add = TRUE, col = 'red', lty = 2, lwd = 2)
curve(dnorm(x, 5.843333, 0.8280661), add = TRUE, col = 'red', lty = 2, lwd = 2)
curve(dnorm(x, 1.199333, 0.7622377), add = TRUE, col = 'red', lty = 2, lwd = 2)
curve(dnorm(x, 3.758, 1.7622377), add = TRUE, col = 'red', lty = 2, lwd = 2)

# Export figure to latex
library(tikzDevice)
tikz('funcao1.tex', width = 3.5, height = 3.5)
hist(data.iris$sepal_width, main = "Sepal Width", xlab = "width", freq = FALSE, col = "yellow")
lines(density(data.iris$sepal_width), lty = 2, lwd = 2)
curve(dnorm(x, 3.057, 0.4358663), add = TRUE, col = "red", lty = 2, lwd = 2)
dev.off()

# pnorm
# Calculo da probabilidade de encontrar um valor especifico em uma dist normal usando uma media e um desvio padrao

prob1 = pnorm(3.1, mean_sepal, std_sepal)
prob2 = pnorm(3.6, mean_sepal, std_sepal)

prob2 - prob1

# QUARTIL 
qnorm(0.25, mean_sepal, std_sepal)
# Busca a densidade numa distribuicao normal por um valor
dnorm(3.428, mean_sepal, std_sepal)