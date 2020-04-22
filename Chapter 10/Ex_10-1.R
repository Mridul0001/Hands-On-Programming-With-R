abs_loop <- function(vec){
  for(i in 1:length(vec)){
    if(vec[i] < 0){
      vec[i] <- -vec[i]
    }
  }
  vec
}

abs_set <- function(vec){
  negs <- vec < 0
  vec[negs] <- vec[negs] * -1
  vec
}

#object with 100 million values
long <- rep(c(1, -1), 50000000)
#checking total time taken by above functions to process the long object
system.time(abs_loop(long))
system.time(abs_set(long))

#time by built-in abs function
system.time(abs(long))