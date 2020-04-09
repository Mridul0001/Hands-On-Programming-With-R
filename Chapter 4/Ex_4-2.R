#shuffle function
shuffle <- function(cards){
  random <- sample(1:52, size = 52)
  cards[random, ]
}