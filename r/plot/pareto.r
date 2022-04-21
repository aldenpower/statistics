library(ggplot2)
library(qcc)

count = c(300,430,500,320,321,543)

xVariable = c('Nottingham', 'Bristol', 'Leeds', 'Keswick', 'Derby', 'Norfolk')

myDf = data.frame(count = count, UkCity = xVariable, stringAsFactors = FALSE) 
myDf = myDf[order(myDf$count, decreasing=TRUE), ]

myDf$UkCity = factor(myDf$UkCity, levels=myDf$UkCity)

myDf$cumulative <- cumsum(myDf$count)

myDf


ggplot(myDf, aes(x=myDf$UkCity)) + geom_bar(aes(y=myDf$count), fill='blue', stat="identity") + geom_point(aes(y=myDf$cumulative), color = rgb(0, 1, 0), pch=16, size=1) + geom_path(aes(y=myDf$cumulative, group=1), colour="slateblue1", lty=3, size=0.9) + theme(axis.text.x = element_text(angle=90, vjust=0.6)) + labs(title = "Pareto Plot", subtitle = "Produced by Gary Hutson", x = 'UK Cities', y = 'Count')

# -------------------------------------------------------------------------------------------------

defect <- c(80, 27, 66, 94, 33)
names(defect) <- c("price code", "schedule date", "supplier code", "contact num.", "part num.")
pareto.chart(defect)

