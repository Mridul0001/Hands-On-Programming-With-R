#Will R be able to find deck and return answer without arguments?
deal <- function(){
  card <- deck[1, ]
  deck <- deck[-1, ]
  card
}