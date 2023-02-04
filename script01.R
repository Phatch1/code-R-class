# Clear variables
rm(list=ls())
# Random values
x <- rnorm(10000,mean=10,sd=3)
mean(x)
# Display histogram
hist(x)
# Create Data Frame
dat1 = rnorm(50,mean=1,sd=2)
dat2 <- rnorm(50,mean=-3, sd=3)
dat3 <- rnorm(50,mean=5, sd=2)
df <- data.frame(Val1=dat1,Val2=dat2,Val3=dat3)
df[1:5,1:2]
hist(df[,2],10)
df[-c(5:8,10:14),2:3]
# Read Iris Data
dat<-read.csv("d:/iris.csv",header=T,sep=",")
summary(dat)
# Query Data
dat[dat[,"variety"]=="Versicolor",]
dim(dat[dat[,"variety"]=="Versicolor",])
levels(factor(dat[,"variety"]))
unique(dat[,"variety"])
idx <- which(dat[,"sepal.length"]>7)
dat[dat[,"sepal.length"]>7,"sepal.length"] = 999
dat[idx,]