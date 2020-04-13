slot_symbols <- function(prize){
  #extract symbols
  symbols <- attr(prize, "symbols")
  
  #collapse symbols into single string
  symbols <- paste(symbols, collapse = " ")
  
  #combine symbol with prize as a regular expression
  string <- paste(symbols, prize, sep = "\n$")
  cat(string)
}