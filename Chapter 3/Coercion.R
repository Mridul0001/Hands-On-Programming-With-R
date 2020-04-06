#If a character string is present in atomic vector, R will convert everything else in the
#vector to character strings. If a vector only contains logicals and numbers, R will convert
#logicals to numbers. R uses same rules when you try to do math with logical values. e.g.
sum(c(TRUE, FALSE, TRUE)) #TRUE = 1, FALSE = 0

#Let's convert data from one type to another with as function
as.character(5)
as.logical(0)
as.numeric(F)
#R will convert data wherever there is a sensible way to do so