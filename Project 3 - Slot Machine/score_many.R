score_many <- function(symbols){
  #count sum of cherries and diamonds in each combination
  cherries <- rowSums(symbols == "C")
  diamonds <- rowSums(symbols == "DD")
  
  #counting diamong as cherries
  prize <- c(0, 2, 5)[cherries + diamonds +1]
  
  #but is there are no real cherries then prize will be 0
  prize[!cherries] <- 0
  
  #check for same symbols
  same <- symbols[,1] == symbols[,2] & symbols[,2] == symbols[,3]
  payoffs <- c("7" = 80, "BBB" = 40, "BB" =25, "B" = 10, "C" = 10, "0" = 0)
  prize[same] <- payoffs[symbols[same, 1]]
  
  #check for all bars
  bars <- symbols == "BBB" | symbols == "BB" | symbols == "B"
  all_bars <- bars[,1] & bars[,2] & bars[,3]
  prize[all_bars] <- 5
  
  #handle wilds
  two_wilds <- diamonds == 2
  
  #identify non wild symbol
  one <- two_wilds & symbols[,1] != symbols[,2] & symbols[,2] == symbols[,3]
  two <- two_wilds & symbols[,1] != symbols[,2] & symbols[,1] == symbols[,3]
  three <- two_wilds & symbols[,1] == symbols[,2] & symbols[,2] != symbols[.3]
  
  prize[one] <- payoffs[symbols[one, 1]]
  prize[two] <- payoffs[symbols[two, 1]]
  prize[three] <- payoffs[symbols[three, 1]]
  
  #combos with one wild
  one_wild <- diamonds == 1
  #treat as all bars if appropriate
  wild_bars <- one_wild & (rowSums(bars)==2)
  prize[wild_bars] <-5
  
  #treat as three of a kind if appropriate
  one <- one_wild & symbols[,1] == symbols[,2]
  two <- one_wild & symbols[,2] == symbols[,3]
  three <- one_wild & symbols[,1] == symbols[,3]
  prize[one] <- payoffs[symbols[one,1]]
  prize[two] <- payoffs[symbols[two,2]]
  prize[three] <- payoffs[symbols[three,3]]
  
  #double prize for every diamond
  unname(prize * 2^diamonds)
  } 