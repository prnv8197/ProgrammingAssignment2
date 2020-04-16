library("jpeg")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg",destfile="coursera.jpeg")
jp<-readJPEG("coursera.jpeg", native=TRUE)
quantile(jp, probs = c(0.3,0.8))