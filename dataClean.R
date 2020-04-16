library(data.table)
#Downloading the required data files Household data
data<-download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv",destfile="csvdata.csv")
datafile<-download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf"
                        ,destfile = "read_csvdata.pdf")
rdata<-read.csv("csvdata.csv")
#Converting to required data type
dt1<-data.table(rdata)
#Removing NA values
dtval<-dt1[!is.na(dt1$VAL)]
#Searching for those rows that have val 24 or above i.e property value equal.more than 1M
dtmil<-dtval[dtval$VAL>=24]

install.packages("xlsx")
library("xlsx")
#Downloading files for Natural gas aquisition form
datan<-download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx",destfile = "Natural.xlsx")
rdatan<-read_xlsx("Natural.xlsx")
dat<-rdatan[c(18:23),c(7:15)]


