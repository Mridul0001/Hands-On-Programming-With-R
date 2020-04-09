deck3 <- deck
deck3$value <- 0

deck3$value[deck3$suit == "hearts"] <- 1
queenOfSpades <- deck3$face == "queen" & deck3$suit == "spades"
deck3$value[queenOfSpades] <- 13
deck3[queenOfSpades, ]