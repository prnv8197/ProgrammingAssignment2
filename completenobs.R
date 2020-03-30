
complete<-function(id){
        
        filename<-file.path(list.files(getwd(),"*.csv"))
        com=NULL
        for(i in id){
                myfiles<-read.csv(filename[i])
                mat<-cbind(myfiles)
                nob1<-mat[,3]
                cnob1<-nob1[!is.na(nob1)]
                nob2<-mat[,2]
                cnob2<-nob2[!is.na(nob2)]
        
                if(length(cnob1)>=length(cnob2)){
                        fnob=length(cnob2)
                }
        else{
                fnob=length(cnob1)
        }
com<-rbind(com,data.frame(myid=i,nobs=fnob))

        
        }
        
        com
        
}