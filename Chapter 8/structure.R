play <- function(){
  symbols <- get_symbols()
  structure(score(symbols), symbols = symbols)
}