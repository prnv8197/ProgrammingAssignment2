library("dplyr")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", destfile="gross.csv")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv", destfile="education.csv")
edu<-read.csv("education.csv", as.is=TRUE)
gross<-read.csv("gross.csv", as.is=TRUE)
GDP<-as.numeric(as.character(gross$Gross.domestic.product.2012))
mutate(gross,as.numeric(as.character(gross$Gross.domestic.product.2012)))
newedu<-select(edu,CountryCode:Income.Group)
mdf

mdf<-arrange(mdf, DSC(Gross.domestic.product.2012))
meanf1<-filter(mdf, Income.Group=="High income: OECD")
meanf<-mean(as.numeric(meanf1$Gross.domestic.product.2012), na.rm=TRUE)
meanf
mdf<-na.omit(mdf)
summarise(mdf, mean(Gross.domestic.product.2012))
#From the web
gdp <- read.csv("gross.csv", skip = 4, nrows = 215) %>%
        subset(!is.na(X) & X != "", select = c("X", "X.1", "X.3", "X.4")) %>%
        rename(CountryCode = X, rankingGDP = X.1, Long.Name = X.3, gdp = X.4)

answer2 <- gsub(",", "", gdp$gdp) %>%
        as.numeric %>%
        mean(na.rm = TRUE)


