#Rewriting deal to assign deck[-1, ] to global variable deck
deal <- function(){
  card <- deck[1, ]
  assign("deck", deck[-1, ], envir = globalenv())
  card
}