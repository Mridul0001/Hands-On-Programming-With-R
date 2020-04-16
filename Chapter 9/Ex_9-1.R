#combination of all possible outcomes of slot machine
wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
combination <- expand.grid(wheel, wheel, wheel, stringsAsFactors = FALSE)

