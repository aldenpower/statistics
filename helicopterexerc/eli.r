library("SixSigma")

# PRIMEIRO EXPERIMENTO

getwd()

protot = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/protot.csv")
protot
# Não foi considerada a mesma altura de lançamento para cada operador e a mao foi colocada no clipe
elidf1 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf1.csv")
elidf1
# RR test
ss.rr(var = ft, part = pr, appr = op, data = elidf1)

shapiro.test(elidf1$ft)

# SEGUNDO EXPERIMENTO

# Foi considerada a mesma altura de lançamento de 1.5m medida no momento do lancamento e a mao foi colocada no clipe
elidf2 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf2.csv")

shapiro.test(elidf2$ft)

# RR test
ss.rr(var = ft, part = pr, appr = op, data = elidf2)

boxplot(elidf2$ft ~ elidf2$op)

# TERCEIRO EXPERIMENTO

# Foram considerados 5 runs compostos pela media entre 3 lancamentos para 4 prototipos com medidas iguais e altura de lancamento de 1.5m
# medida no momento do lancamento e mao colocada no clipe
elidf3 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf3.csv")
elidf3$'ft' = (elidf3$'ft1' + elidf3$'ft2' + elidf3$'ft3') / 3
elidf3

shapiro.test(elidf3$ft)

# RR test
ss.rr(var = ft, part = pr, appr = op, data = elidf3)

# QUARTO EXPERIMENTO
# Alinhado com o teto e segurando no clipe com as asas caidas
elidf4 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf4.csv")
elidf4
elidf4$'flight' = (elidf4$'flight.time.1' + elidf4$'flight.time.2' + elidf4$'ft3') / 3


ss.rr(var = ft, part = pr, appr = op, data = elidf4)

# QUINTO EXPERIMENTO
# Asas paralelas com o teto e dedo apontando e saindo do papel

elidf5 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf5.csv")