library(SixSigma)

voltmeter = factor(rep(1:2, each = 9))
battery = factor(rep(rep(1:3, each = 3), 2))
run = factor(rep(1:3, 6))
voltage = c(1.4727, 1.4206, 1.4754, 1.5083, 1.5739, 
1.4341,	1.5517, 1.5483, 1.4614, 1.3337, 
1.6078, 1.4767,	1.4066, 1.5951, 1.8419,
1.7087, 1.8259, 1.5444)
batteries = data.frame(voltmeter, battery, run, voltage)
voltage = batteries$voltage
summary(voltage)

# Split data
batteries.voltmeter = split(batteries, f=factor(batteries$voltmeter))
batteries.voltmeter1.voltage = batteries.voltmeter$'1'$'voltage'
batteries.voltmeter2.voltage = batteries.voltmeter$'2'$'voltage'

# Mean, std 
voltage_mean = mean(voltage)
voltage_std = sd(voltage)
batteries.voltmeter1_mean = mean(batteries.voltmeter1.voltage)
batteries.voltmeter2_mean = mean(batteries.voltmeter2.voltage)

# Test for normality
shapiro.test(voltage)

# Plot
hist(voltage,
main = "Voltage",
xlab = "Voltage",
freq = TRUE,
col = "yellow")

lines(density(voltage), lty = 2, lwd = 2)
curve(dnorm(x, voltage_mean, voltage_std), add = TRUE, col = "red", lty = 2, lwd = 2)
boxplot(voltage)

boxplot(batteries$voltage ~ batteries$voltmeter)
boxplot(batteries$voltage ~ batteries$battery)

# Anova test for variability
anova(lm(voltage ~ battery + voltmeter + battery * voltmeter, data = batteries))

# RR gage test
ss.rr(var = voltage, part = battery, appr = voltmeter, data = batteries)

pastries = ss.data.pastries

ss.rr(var = comp, part = batch, appr = lab, data = pastries)