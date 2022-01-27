library("SixSigma")

target = 1.4
LIE = 1.1
LSE = 1.7

elidf9 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf9.csv")
pr9.1 = elidf9$prototipo1
pr9.2 = elidf9$prototipo2
pr9.3 = elidf9$prototipo3
pr9.4 = elidf9$prototipo4

ss.study.ca(pr9.1, LSL = LIE, USL = LSE, Target = target, alpha = 0.05)
ss.study.ca(pr9.2, LSL = LIE, USL = LSE, Target = target, alpha = 0.05)
ss.study.ca(pr9.3, LSL = LIE, USL = LSE, Target = target, alpha = 0.05)
ss.study.ca(pr9.4, LSL = LIE, USL = LSE, Target = target, alpha = 0.05)

elidf10 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf10.csv")
pr10.3 = elidf10$prototipo3
ss.study.ca(pr10.3, LSL = LIE, USL = LSE, Target = target, alpha = 0.05)


elidf11 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf11.csv")
pr11.3 = elidf11$prototipo3
ss.study.ca(pr11.3, LSL = LIE, USL = LSE, Target = target, alpha = 0.05)


elidf12 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf12.csv")
pr12.3 = elidf12$prototipo3
ss.study.ca(pr12.3, LSL = LIE, USL = LSE, Target = target, alpha = 0.05)


elidf13 = read.csv("/home/mr-alden/reps/statistics/helicopterexerc/elidf13.csv")
pr13.2 = elidf13$prototipo2
ss.study.ca(pr13.2, LSL = LIE, USL = LSE, Target = target, alpha = 0.05)


# ss.ca.z(wine, LIE, LSE)
# ss.ca.cp(wine, LIE, LSE)
# ss.ca.cpk(wine, LIE, LSE)
# ss.ca.cp(wine, LIE, LSE, ci = TRUE)

# nivel.sigma.1 = (LSE - media) / sd.wine
# nivel.sigma.2 = (media - LIE) / sd.wine