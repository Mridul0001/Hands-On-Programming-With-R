score <- function(symbols){
  diamonds <- sum(symbols == "DD")
  cherries <- sum(symbols == "C")
  
  slots <- symbols[symbols!="DD"]
  same <- length(unique(slots)) == 1
  bars <- slots %in% c("B", "BB", "BBB")
  
  if(diamonds == 3){
    prize <- 100
  }else if(same){
    payouts <- c("7" = 80, "BBB" = 40, "BB" =25, "B" = 10, "C" = 10, "0" = 0)
    prize <- unname(payouts[slots[1]])
  }else if(all(bars)){
    prize <- 5
  }else if(cherries>0){
    prize <- c(0, 2, 5)[cherries + diamonds +1]
  }
  else{
    prize <- 0
  }
  prize <- prize * 2^diamonds
}