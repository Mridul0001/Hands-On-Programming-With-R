deck4 <- deck
faceCard <- deck4$face %in% c("king", "queen", "jack")
deck4[faceCard, ]
deck4$value[faceCard] <- 10
deck4[faceCard, ]
deck4$value[deck4$face == "ace"] <- NA
deck4[deck4$face == "ace", ]