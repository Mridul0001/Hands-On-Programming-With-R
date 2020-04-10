setup <- function(deck){
  DECK <- deck
  DEAL <- function(){
    cards <- deck[1, ]
    assign("deck", DECK[-1,  ], envir = parent.env(environment()))
    cards
  }
  SHUFFLE <- function(){
    random <- sample(1:52, size = 52)
    assign("deck", DECK[random, ], envir = parent.env(environment()))
  }
  list(deal = DEAL, shuffle = SHUFFLE)
}