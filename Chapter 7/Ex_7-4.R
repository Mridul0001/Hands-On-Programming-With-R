#how to increase the prize based on number of diamonds
#lets assume prize is 5
samplePrize <- 5
numDiamonds <- sum(symbols == "DD")
samplePrize * 2^numDiamonds