#Rewriting shuffle() so that it return copy of DECK
shuffle <- function(){
  random <- sample(1:52, size = 52)
  assign("deck", DECK[random, ], globalenv())
}