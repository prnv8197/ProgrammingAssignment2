pollutantmean<-function(pollutant,id){
        filename<-file.path(list.files(getwd(),"*.csv"))
        vecn<-numeric()
        vecs<-numeric()
        for(i in id){
                myfiles<-read.csv(filename[i])
                mat<-cbind(myfiles)
                
                
                if(pollutant==1){
                        
                        nitrate<-mat[,3]
                        cnitrate<-nitrate[!is.na(nitrate)]
                        for(v in cnitrate){
                                vecn<-c(vecn,v)
                        }
                        
                        
                }
                if(pollutant==2){
                        
                        sulfate<-mat[,2]
                        csulfate<-sulfate[!is.na(sulfate)]
                        for(k in csulfate){
                                vecs<-c(vecs,k)
                                
                        }
                        
                        
                }
                
        }
        
        if(pollutant==1){
        print(mean(vecn))
        }
        if(pollutant==2){
                print(mean(vecs))
        }
        
}