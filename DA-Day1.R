1+1
1*2
4/2
a <- 4*2
a
b <- 8/2
b
c <- b*2
c
a+b
a <- c(1,2,3,4,5)
a
a <- c(4,5,"M")
a
rep(2,11)
seq(1,10, by=3)
d<- c(2,4,6,8,10)
d
d[4]
d[11]
s <- c("a quick brown fox jumps over the lazy dog")
s[11]
s[2]
s
s[3]
s[2]
p<- c(11,12,13,14,15,16,17,18,19,20,21,22,23)
p
p[8]
p[1:5]
p[-2:-5]


A<-data.frame(x=1:3,y=c("pen","pencil","penpencil"))
A
View(A)
A[1,2]  #for row
B<-data.frame(x=1:3,y=c("a:z"))
B
A[c(1,3),1]
A[-2,1]
A[c(1,3), c(1,2)]
admission<-read.csv("C:/Users/monis/OneDrive/Documents/Admission_Prediction.csv")
admission
A[-1,2]
head(admission,100)
A[2,2]

tail(admission,15)
View(tail(admission,15))

AQ<-datasets::airquality
AQ[,c(2,3)]
View(AQ)
NAQ<-AQ[1:5]
View(NAQ)


View(summary(AQ))
summary(AQ[,1])
summary(AQ$Month)

# Data Visualization

plot(AQ$Wind, type = "b") # scatter chart 
plot(AQ$Wind,AQ$Temp, type = 'p') # axis declaration
plot(AQ)

plot(AQ$Ozone, xlab = "ozone concerntration", ylab = "No of Instance",
     main = "Ozone Level in NYC", col= "blue")
# Xlab is label for X axis
# ylab for Y axis
# main is for Main header 
# col is used for color


barplot(AQ$Ozone, xlab = "ozone concerntration", ylab = "No of Instance",
        main = "Ozone Level in NYC", col= "green", horiz = F)

hist(AQ$Temp, xlab = "Temperature", ylab = "Frequency",
     main = "Temperature in NYC", col= "orange" )
boxplot(AQ$Wind)
boxplot.stats(AQ$Wind)$out

#Multi Boxplot

boxplot(AQ[,1:4], main = "Multi Boxplot")

par(mfrow = c(3,3))
plot(AQ$Wind)
boxplot(AQ$Wind)
hist(AQ$Temp)
plot(AQ$Ozone, type = "l")
plot(AQ$Solar.R, type = "b")
hist(AQ$Wind)
boxplot(AQ$Ozone)
boxplot(AQ$Solar.R)

sd(AQ$Wind)

library(moments)
skewness(AQ$Wind)
kurtosis(AQ$Wind)
