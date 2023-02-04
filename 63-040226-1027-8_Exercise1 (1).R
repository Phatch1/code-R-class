#get data
data(metcars)
metcars
# q1
dim(metcars)
# q2
colnames(metcars)
# q3
summary(metcars)
# q4
hist(metcars[,"mpg"])
# q5
q5 <- which(metcars[,"mpq"]>20.5)
metcars[q5,]
# q6
levels(factor(metcars[,"gear"]))
# q7
metcars[metcars[,"gear"]==3,"mpg"] = 101
# q8
metcars[metcars[,"gear"]==3,"gear"] = "G3"
metcars[metcars[,"gear"]==4,"gear"] = "G4"
metcars[metcars[,"gear"]==5,"gear"] = "G5"
# q9
q9 <- which(metcars[,"hp"]>100)
a9 <- metcars[q9,]
mean(a9[,"wt"])

