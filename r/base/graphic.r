# Plot
help(plot)
a = 1:20; b = a**2; c = 12
plot(a, b, type = "l", pch = 10)
lines(rev(a), b, lwd = 4)
lines(a + 3, b, lty = 2)
points(a, 400 - b, pch = 0:20)
points(c, 22)
lines(30:15)


a <- 1:20; b <- a^2
plot(a,b,type="l")
lines(a,2*b,lwd=4)
lines(a,0.5*b,lty=2)
lines(a,3*b,lty=3)
lines(a,4*b,lty=2,lwd=4)

plot(c(-pi,pi),c(-1,1), type="n")
x<-seq(-pi,pi,0.1)
a <- sin(x)
b <- sin(x-2/3*pi)
c <- sin(x+2/3*pi)
lines(x,a,col=2,lwd=1)
lines(x,b,col=3,lwd=2)
lines(x,c,col=4,lwd=3)

plot(c(-pi,pi),c(-1,3),xlab="Período", ylab="Fases", type="n")
title("Representação das tensões trifásicas","Fases ABC")
lines(x,a,col=2,lwd=1)
lines(x,b,col=3,lwd=2)
lines(x,c,col=4,lwd=3)
text(0,2,"Observe a defasagem de 120 ◦ entre as fases")

a <- seq(from=0, to=20, by=2); b <- a^2
plot(a,b,type="n") #plota um gráfico vazio
text(a,b,"R")
#aplica a etiqueta no sítio dos pontos