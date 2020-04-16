myfiles<-download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv", destfile="w4q1.csv")
rfile<-read.csv("w4q1.csv")
dataf<-data.frame(rfile)
datacol<-colnames(dataf)
splitcol<-strsplit(datacol, "wgtp")
splitcol[123]

