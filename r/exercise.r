# Load data
data = read.csv("./exerc2020-1.csv")
# Separate by dados
sec1 = data[0:2]
sec2 = data[3:4]
sec3 = data[5:6]
# Select by tipoequip
sec1tipoequip = split(sec1, f = factor(sec1$tipoequip1))
sec2tipoequip = split(sec2, f = factor(sec2$tipoequip2))
sec3tipoequip = split(sec3, f = factor(sec3$tipoequip3))

tosum1 = sum(sec1tipoequip$"TRANSPORTADOR ROLETES ELEVAÇÃO POR BIELA"$dados1)
tosum2 = sum(sec1tipoequip$"OPEN GATE - BILANCELA"$dados1)
tosum3 = sum(sec1tipoequip$"PINÇA AUTOMATICA"$dados1)
tosum4 = sum(sec1tipoequip$"DISPOSITIVO DIMENSIONAL LATERAL"$dados1)
tosum5 = sum(sec1tipoequip$"ROBO"$dados1)
tosum6 = sum(sec1tipoequip$"PAINEL DE SOLDA"$dados1)

tosum44 = sum(sec2tipoequip$"DISPOSITIVO DIMENSIONAL LATERAL"$dados2)
tosum22 = sum(sec2tipoequip$"OPEN GATE - BILANCELA"$dados2)
tosum33 = sum(sec2tipoequip$"PINÇA AUTOMATICA"$dados2)
tosum55 = sum(sec2tipoequip$"ROBO"$dados2)

tosum45 = sum(sec3tipoequip$"DISPOSITIVO DIMENSIONAL LATERAL"$dados3)
tosum25 = sum(sec3tipoequip$"OPEN GATE - BILANCELA"$dados3)
tosum35 = sum(sec3tipoequip$"PINÇA AUTOMATICA"$dados3)

vec1 = c(tosum1, tosum2, tosum3, tosum4, tosum5, tosum6)
vec2 = c(tosum44, tosum22, tosum33, tosum55)
vec3 = c(tosum45, tosum25, tosum35)

barplot(vec1,
main = "Frequencia equipe 1",
xlab = "tipo equipe 1",
ylab = "total",
names.arg = c("TRANSP. ROLETES EL.BIELA", "OG - BILANCELA", "PINÇA AUTOMATICA", "DISP. DIM. LATERAL", "ROBO", "PAINEL DE SOLDA"),
)
help(barplot)

barplot(vec2,
main = "Frequencia equipe 2",
xlab = "tipo equipe 2",
ylab = "total",
names.arg = c("DISP. DIM. LATERAL",  "OG - BILANCELA", "PINÇA AUTOMATICA", "ROBO"),
)

barplot(vec3,
main = "Frequencia equipe 3",
xlab = "tipo equipe 3",
ylab = "total",
names.arg = c("DISP. DIM. LATERAL",  "OG - BILANCELA", "PINÇA AUTOMATICA"),
)