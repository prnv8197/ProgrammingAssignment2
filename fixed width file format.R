x <- read.fwf(
        "getdata_wksst8110.for",
        skip=4,
        widths=c(12, 7, 4, 9, 4, 9, 4, 9, 4))
fordf<-data.frame(x)
calc<-sum(fordf[9,2:9])