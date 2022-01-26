library(SixSigma)
wine = c(755.81, 750.54, 751.05, 749.52, 749.21, 748.38, 
	748.11,	753.07, 749.56, 750.08,	747.16, 747.53, 
	749.22, 746.76,	747.64, 750.46, 749.27, 750.33, 
	750.26, 751.29)

total = 1915

a = (1915 - 3) / total
b = (1912 - 5) / total
c = (1907 - 15) / total

a * b * c

carros = 1000
prensa = 0.78 # 0.78
carroc = 0.9
pint = 0.92

floor(carros * prensa * carroc * pint)

(23 / 1915) * (10 ^ 6)

# Sigma
LSE = 760
LIE = 740
sd.wine = sd(wine)
media = mean(wine)

# Nivel so six sigma
ss.ca.z(wine, LIE, LSE)
# cp
ss.ca.cp(wine, LIE, LSE)
# cpk
ss.ca.cpk(wine, LIE, LSE)
# 95% de certeza que esse processo estara com o cp enrte os valores do intervalo de confianca
ss.ca.cp(wine, LIE, LSE, ci = TRUE)

ss.study.ca(wine, LSL = LIE, USL = LSE, Target = 750, alpha = 0.05)

# para cpk o valor ideal eh acima de 1.33

nivel.sigma.1 = (LSE - media) / sd.wine
nivel.sigma.2 = (media - LIE) / sd.wine

nivel.sigma.1
nivel.sigma.2

shapiro.test(wine)

LSL = 4
USL = 14
mean = 10
sd = 2
