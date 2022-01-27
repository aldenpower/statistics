library("SixSigma")

target = 1.4
LIE = 1.1
LSE = 1.7

elidf9 = read.csv("/home/senai/Desktop/statistics/helicopterexerc/elidf9.csv")
pr1 = elidf9$prototipo1


elidf10 = read.csv("/home/senai/Desktop/statistics/helicopterexerc/elidf10.csv")
pr3 = elidf10$prototipo3

ss.study.ca(pr3, LSL = LIE, USL = LSE, Target = target, alpha = 0.05)

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

