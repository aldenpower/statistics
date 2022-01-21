library("SixSigma")

# 4.1
# L(Y) = k * ((Y - 10)**2)
target1 = 15; tolerance1 = 2; costestimation1 = 350
k1 = costestimation1 / (tolerance1 ** 2)

#4.2
target2 = 750; tolerance2 = 20; costestimation2 = 1.25
k2 = costestimation2 / (tolerance2 ** 2)
k2

#4.1
curve(k1 * (x - target1) ^ 2, 10, 20,
lty = 1,
lwd = 2,
ylab = "Cost of Poor Quality",
xlab = "Observed value of the characteristic",
main = expression(L(Y) == 87.5 ~ (Y - 15)^2)
)

abline(v = target1 - tolerance1, lty = 2)
abline(v = target1 + tolerance1, lty = 2)
abline(v = target1, lty = 2)
abline(h = 0)

text(target1, k1, "T", adj = 2)
text(target1 - tolerance1, 1400, "LSL", adj = 1.5)
text(target1 + tolerance1, 1400, "USL", adj = -0.5)

#4.2
curve(k2 * (x - target2) ^ 2, 720, 780,
lty = 1,
lwd = 2,
ylab = "Cost of Poor Quality",
xlab = "Observed value of the characteristic",
main = expression(L(Y) == 0.003125 ~ (Y - 750)^2)
)

abline(v = target2 - tolerance2, lty = 2)
abline(v = target2 + tolerance2, lty = 2)
abline(v = target2, lty = 2)
abline(h = 0)

text(target2, k2, "T", adj = 2)
text(target2 - tolerance2, 1.2, "LSL", adj = 1.5)
text(target2 + tolerance2, 1.2, "USL", adj = -0.5)

#4.3

ss.lfa(ss.data.ca,
"Volume",
10,
750,
1.25,
lfa.size = 12500,
lfa.output = "both"
)


help(ss.lfa)

shapiro.test(ss.data.ca$Volume)

ss.data.ca
