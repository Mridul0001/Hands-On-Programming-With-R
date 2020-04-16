die <- c(1:6)
roll.twice <- expand.grid(die, die)
tail(roll.twice)
roll.twice$value <- roll.twice$Var1 + roll.twice$Var2
prob <- c("1" =  1/8, "2" =  1/8, "3" =  1/8, "4" =  1/8, "5" =  1/8, "6" =  3/8)
roll.twice$prob1 <- prob[roll.twice$Var1]
roll.twice$prob2 <- prob[roll.twice$Var2]
roll.twice$prob <- roll.twice$prob1*roll.twice$prob2
head(roll.twice)
#expected value
sum(roll.twice$value*roll.twice$prob)