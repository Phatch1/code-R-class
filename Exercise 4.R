df <- state.x77

print(df)

hist(df[,"Income"])
df<- data.frame(df)
df$Group <- as.factor(ifelse(df$Income < 4000, "Low",ifelse(df$Income < 5000, "Middle", "High")))
head(df)

tapply(df$Income, df$Group, median)
tapply(df$Income, df$Group, function(x){(max(x)-min(x)/2)})
write.table(df,"C:\\Users\\Student\\Desktop\\new_state.x77.txt")
