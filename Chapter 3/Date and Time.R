#saving current time in an object
now <- Sys.time()
now

class(now)
#unclass now to remove class attribute from this object
unclass(now)
#checking the date after 100 million seconds have been passed since Jan 1, 12:00AM, 1970
mil <- 100000000
mil
class(mil) <- c("POSIXct", "POSIXt" )
mil
