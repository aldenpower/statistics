library("SixSigma")

# PRIMEIRO EXPERIMENTO
protot = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/protot.csv")
elidf1 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf1.csv")
ss.rr(var = ft, part = pr, appr = op, data = elidf1)
# SEGUNDO EXPERIMENTO
elidf2 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf2.csv")
# RR test
ss.rr(var = ft, part = pr, appr = op, data = elidf2)
# TERCEIRO EXPERIMENTO
elidf3 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf3.csv")
elidf3$'ft' = (elidf3$'ft1' + elidf3$'ft2' + elidf3$'ft3') / 3
# RR test
ss.rr(var = ft, part = pr, appr = op, data = elidf3)
# QUARTO EXPERIMENTO
elidf4 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf4.csv")
elidf4$'flight' = (elidf4$'flight.time.1' + elidf4$'flight.time.2' + elidf4$'ft3') / 3
# RR test
ss.rr(var = ft, part = pr, appr = op, data = elidf4)
# QUINTO EXPERIMENTO
elidf5 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf5.csv")
# SEXTO EXPERIMENTO
elidf6 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf6.csv")
# SETIMO EXPERIMENTO
elidf7 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf7.csv")