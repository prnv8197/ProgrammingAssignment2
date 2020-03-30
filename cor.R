corr<-function(threshold=0){
        com2<-numeric()
        cval<-complete(1:332)
        filename<-file.path(list.files(getwd(),"*.csv"))
        for(i in 1:332){
                if(cval[i,2]>=threshold){
                        
                        myfiles<-read.csv(filename[i])
                        mat2<-cbind(myfiles)
                        cdata<-na.exclude(mat2)
                        
                        head(cdata)
                        nit<-cdata$nitrate
                        sul<-cdata$sulfate
                        cordata<-cor(nit,sul)
                        com2<-rep(cordata)
                        print(summary(com2))
                
        }
        }
        
}