score <- function(symbols){#checking if all symbols are same
same <- all(symbols == symbols[1])
#checking if all are bars
bars <- all(symbols %in% c("B", "BB", "BBB"))
#writing conditional statements on basis of above results
if(same){
  #lookup table to look up for prize value
  payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" =25, "B" = 10, "C" = 10, "0" = 0)
  prize <- unname(payouts[symbols[1]])
}else if(bars){
  prize <- 5
}else{
  cherries <- sum(symbols == "C")
  prize <- c(0,2,5)[cherries + 1]
}
#adjust for diamonds
diamonds <- sum(symbols == "DD")
prize * 2^diamonds
}