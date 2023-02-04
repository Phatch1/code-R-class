rm(list=ls())
ID <-c(1,2,3,4,5)

Score <-c(89,NA,40,NA,59)

Courses <-c("MA101","MC101","NA,MA333","MC644")
is.na(ID)
is.na(Score)
is.na(Courses)

df <- data.frame(ID,Score,Courses)

good <- complete.cases(df)
df[good]

com = complete.cases(ID,Score,Courses)
F(com,)
na.omit(F)

number <- 50
stop <- FALSE
while (stop == FALSE) {
  X <- as.integer(readline("intputnumber"))
  if (x < number) {
    print("Too small")
  }
  else if (x > number){
    print("Too large")
  }
  else {
    print("BINGO")
    stop = TRUE
  }
}
  
