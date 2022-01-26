library("SixSigma")

# Prototipos utilizados
protot = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/protot.csv")

# Resumo de experimentos
experiments = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/experiments.csv")

# PRIMEIRO EXPERIMENTO
elidf1 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf1.csv")
ss.rr(var = flight.time, part = prototipo, appr = operador, data = elidf1)
# SEGUNDO EXPERIMENTO
elidf2 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf2.csv")
ss.rr(var = flight.time, part = prototipo, appr = operador, data = elidf2)
# TERCEIRO EXPERIMENTO
elidf3 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf3.csv")
elidf3$'flight.time' = (elidf3$'flight.time.1' + elidf3$'flight.time.2' + elidf3$'flight.time.3') / 3
ss.rr(var = flight.time, part = prototipo, appr = operador, data = elidf3)
# QUARTO EXPERIMENTO
elidf4 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf4.csv")
elidf4$'flight.time' = (elidf4$'flight.time.1' + elidf4$'flight.time.2' + elidf4$'flight.time.3') / 3
ss.rr(var = flight.time, part = prototipo, appr = operador, data = elidf4)
# QUINTO EXPERIMENTO
elidf5 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf5.csv")
elidf5$'flight.time' = (elidf5$'flight.time.1' + elidf5$'flight.time.2' + elidf5$'flight.time.3') / 3
ss.rr(var = flight.time, part = prototipo, appr = operador, data = elidf5)
# SEXTO EXPERIMENTO
elidf6 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf6.csv")
ss.rr(var = flight.time, part = prototipo, appr = operador, data = elidf6)
# SETIMO EXPERIMENTO
elidf7 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf7.csv")
ss.rr(var = flight.time, part = prototipo, appr = operador, data = elidf7)
# OITAVO EXPERIMENTO
elidf8 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf8.csv")
ss.rr(var = flight.time, part = prototipo, appr = operador, data = elidf8)