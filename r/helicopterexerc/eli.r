library("SixSigma")

# PRIMEIRO EXPERIMENTO

protot = read.csv("~/Desktop/protot.csv")
protot
# Não foi considerada a mesma altura de lançamento para cada operador
elidf1 = read.csv("~/Desktop/elidf1.csv")

# RR test
ss.rr(var = ft, part = pr, appr = op, data = elidf1)

# Foi considerada a mesma altura de lançamento de 1.5m
elidf2 = read.csv("~/Desktop/elidf2.csv")

ss.rr(var = ft, part = pr, appr = op, data = elidf2)
