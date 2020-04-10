show_env <- function(){
  a <- 1
  b <- 2
  list(ran.in = environment(),
       parent = parent.env(environment()),
       objects = ls.str(environment()))
}