for(i in 1:nrow(combination)){
  combination$prize[i] <- score(c(combination[i, 1], combination[i, 2], combination[i, 3]))
}
sum(combination$prob * combination$prize)