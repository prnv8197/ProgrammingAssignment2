mydata<-read.csv("outcome-of-care-measures.csv")


best<-function(state,outcome){
        df<-NULL
        
        
        if(outcome=="heart attack"){
                
                #To simplify the data based outcome
                df<-data.frame(mydata$Hospital.Name,mydata$State,mydata$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack)
                #Preparing the data
                df[df=="Not Available"]<-NA
                #To split data into levels based on state
                df<-split(df,df$mydata.State)
                #Getting the data based on the state given as intput
                cdf<-data.frame(df[state])
                #Cleaning the data
                cdf<-na.exclude(cdf)
                #renaming columns
                colnames(cdf)<-c("Hospital","State","Disease")
                #converting char to num for correct ordering
                cdf$Disease <- as.numeric(as.character(cdf$Disease))
                #Sorting the data in asc order
                acdf<-cdf[order(cdf[3]),]
                print(acdf)
               
        }
        
        if(outcome=="heart failure"){
                
                #To simplify the data based outcome
                df<-data.frame(mydata$Hospital.Name,mydata$State,mydata$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure)
                #Preparing the data
                df[df=="Not Available"]<-NA
                #To split data into levels based on state
                df<-split(df,df$mydata.State)
                #Getting the data based on the state given as intput
                cdf<-data.frame(df[state])
                #Cleaning the data
                cdf<-na.exclude(cdf)
                #renaming columns
                colnames(cdf)<-c("Hospital","State","Disease")
                #converting char to num for correct ordering
                cdf$Disease <- as.numeric(as.character(cdf$Disease))
                #Sorting the data in asc order
                acdf<-cdf[order(cdf[3]),]
                print(acdf)
                
        }
        
        if(outcome=="pneumonia"){
                
                #To simplify the data based outcome
                df<-data.frame(mydata$Hospital.Name,mydata$State,mydata$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia)
                #Preparing the data
                df[df=="Not Available"]<-NA
                #To split data into levels based on state
                df<-split(df,df$mydata.State)
                #Getting the data based on the state given as intput
                cdf<-data.frame(df[state])
                #Cleaning the data
                cdf<-na.exclude(cdf)
                #renaming columns
                colnames(cdf)<-c("Hospital","State","Disease")
                #converting char to num for correct ordering
                cdf$Disease <- as.numeric(as.character(cdf$Disease))
                #Sorting the data in asc order
                acdf<-cdf[order(cdf[3]),]
                print(acdf)
                
        }
        
        
        
        
}
