play_many <- function(n){
  sym_mat <- get_many_symbols(n = n)
  data.frame(w1 = sym_mat[,1], w2 = sym_mat[,2], w3 = sym_mat[,3], prize = score_many(sym_mat))
}