failure_time = c(0.29, 0.32, 1.21, 0.95, 0.14, 2, 0.81, 0.88)
temp = c(63.89, 63.38, 65.05, 62.31, 68.04, 59.12, 62.80, 61.89)
factory = c("A", "B", "C", "C", "B", "B", "A", "B")

df = data.frame(failure_time, temp, factory)

datafac = split(df, f=factor(df$factory))
datafacaa = datafac$"A"
datafacab = datafac$"B"
datafacac = datafac$"C"
datafacaa
datafacatime = datafacaa$failure_time
datafacbtime = datafacab$failure_time
datafacatime
datafacatemp = datafacaa$temp
datafacbtemp = datafacab$temp
datafacctemp = datafacac$temp
cola = colnames(datafaca)
cola

sd(datafacatemp)
sd(datafacbtemp)
sd(datafacctemp)

mean(datafacbtime)

summary(datafaca)


#  SUMMARY
summary(df)

# BAR PLOT
bar = barplot(as.matrix(datafaca[1]), las = 1, beside = TRUE)

write.csv(df, "./dataexc.csv", row.names = FALSE)

shapiro.test(df$temp)
shapiro.test(datafacbtemp)

boxplot(datafacatemp)
boxplot(datafacbtemp)
boxplot(datafacctemp)

plot(as.factor(df$factory), df$failure_time)
plot(as.factor(df$factory), df$temp)


str(df)
