

setwd("C:/Users/Student/Desktop/")
movies <- read.table( file = "Mortality_Stat.txt",sep = "\t",header = TRUE,quote = "\"")
movies

#2.1
convertCode<-function(m_code){
  m_code <- as.character(m_code)
  m_code <- gsub("[<|years| ]","",m_code)
}
movies$Five.Year.Age.Groups.Code = sapply(movies$Five.Year.Age.Groups,convertCode)
movies
#2.2
movies$Rate <- as.numeric(gsub("%","",movies$Rate))*0.01
#2.3
count <- sum(movies$Population == "Not Applicable")
print(count)
#2.4
movies<-movies[!is.na(movies[,"Rare"]),]
mean(movies$Rate)
#2.5
write.table(movies,"C:\\Users\\Student\\Desktop\\Mortality_Stat2.txt",row.names=F,quote=F)