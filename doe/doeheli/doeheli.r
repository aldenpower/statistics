library(SixSigma)
library(ggplot2)
library(nortest)

doeheli = expand.grid(
    altura = gl(2, 1, labels = c("-", "+")),
    comp = gl(2, 1, labels = c("-", "+")),
    larg = gl(2, 1, labels = c("-", "+")),
    clips = gl(2, 1, labels = c("-", "+")),
    tempo = NA
)

doeheli

doeheli$ord <- sample(1:16, 16)
doeheli[order(doeheli$ord),]

doehelidf <- data.frame(doeheli)

doehelidf

# input time experiment
doeheli$score <- c(5.33, 6.99, 4.23,
                   6.61, 2.26, 5.75,
                   3.26, 6.24, 5.7,
                   7.71, 5.13, 6.76,
                   2.79, 4.57, 2.48,
                   6.18)


doehelidf

