library("qcc")
library("BSDA")

# Questão 1

prejtotal <- c(3.5, 0.10, 0.6, 2.4, 0.10, 33, 36.75, 23.7, 0.1, 1.75)
names(prejtotal) <- c("Moldagem solta", "Solda quebrada",
"Centro mold. desloc.", "Lat. mold. desloc.",
"Moldagem arranhada", "Moldagem dentada", "Plástico arranhado",
"Limpeza incompleta", "Orifício deslocado", "Pino deslocado")
pareto.chart(prejtotal, ylab = "Prejuízo total")

# Plástico arranhado, moldagem dentada e limpeza incompleta causam
# mais e 95% do prejuízo total, portanto devem ser focados.

# Questão 2
tvalue <- function(samplemean, nullhypmean, sdsample, samplesize) {

    t = (samplemean - nullhypmean) / (sdsample / (samplesize ^ 0.5))
    deegf = samplesize - 1    
    return(c(t, deegf))
}

nullhyp2mean = 35
samplemean2 = 34.5
samplesd2 = 2.3
samplesize2 = 40

tvalue2 = tvalue(samplemean2, nullhyp2mean, samplesd2, samplesize2)
# Two tailed test
ttesttwotailed2.1 = qt(p = .05, df = tvalue2[2], lower.tail=FALSE)
ttesttwotailed2.2 = qt(p = .01, df = tvalue2[2], lower.tail=FALSE)
ttestonetailedright2 = qt(p = .05, df = tvalue2[2], lower.tail=FALSE)
ttestonetailedright2
# Tanto para 1% quanto para 5% não se rejeita a media de gasolina do automovel.
# Segunda pergunta não rejeita também

# Questão 3
nullhyp3mean = 408
samplemean3 = 420.4
samplesd3 = 55.7
samplesize3 = 50

tvalue3 = tvalue(samplemean3, nullhyp3mean, samplesd3, samplesize3)

ttestonetailedleft = qt(p = .05, df = tvalue3[2], lower.tail=TRUE)
ttestonetailedright = qt(p = .05, df = tvalue3[2], lower.tail=FALSE)

ttestonetailedleft
ttestonetailedright
# A hipotese nula foi rejeitada

# Questão 4
lim4.1 = pnorm(13, mean = 13, sd = 0.1, lower.tail = TRUE, log.p = FALSE)
lim4.2 = pnorm(13.2, mean = 13, sd = 0.1, lower.tail = TRUE, log.p = FALSE)
lim4.3 = pnorm(12.8, mean = 13, sd = 0.1, lower.tail = TRUE, log.p = FALSE)
lim4.4 = pnorm(13.1, mean = 13, sd = 0.1, lower.tail = TRUE, log.p = FALSE)
lim4.5 = pnorm(13.2, mean = 13, sd = 0.1, lower.tail = TRUE, log.p = FALSE)

# Probabilidade de encontrar valores entre 13 e 13.2 kg
prob4.1 = lim4.2 - lim4.1
# Probabilidade de encontrar valores entre 12.8 e 13.1 kg
prob4.2 = lim4.4 - lim4.3
prob4.3 = lim4.5 - lim4.4

prob4.1
prob4.2
prob4.3

standardvalue <- function(value, mean, sdsample) {
    standardized = (value - mean) / sdsample
    return(standardized)
}

standardvalue(12.8, 13, 0.1)
standardvalue(13.1, 13, 0.1)
standardvalue(13.2, 13, 0.1)

# Questão 5
mean5 = 130
sd5 = 45

# Probabilidade de encontrar o valor de 90s
lim5.1 = pnorm(90, mean = mean5, sd = sd5, lower.tail = TRUE, log.p = FALSE)
lim5.2 = pnorm(120, mean = mean5, sd = sd5, lower.tail = TRUE, log.p = FALSE)
lim5.3 = pnorm(180, mean = mean5, sd = sd5, lower.tail = TRUE, log.p = FALSE)

# Probabilidade de encontrar entre 2 e 3 minutos
prob5.1 = lim5.3 - lim5.2
prob5.1

standardvalue(90, mean5, sd5)

# Questão 6
mean6 = 85
sd5 = 15
samplesize5 = 10
tvalue5 = qt(p = 0.1, df = samplesize5 - 1, lower.tail=FALSE)

ci1.6 = mean6 - (tvalue5 * (sd5 / samplesize5))
ci2.6 = mean6 + (tvalue5 * (sd5 / samplesize5))

ci1.6
ci2.6
