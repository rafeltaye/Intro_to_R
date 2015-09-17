complete<- function(directory, id=1:332){
        files_list<-list.files("specdata",full.names=TRUE)
        id<-vector()
        nobs<-vecotr()
        total_nobs<-data.frame(id,nobs)
        for (i in c(2,4,8,10,12)) {
                id_data<-read.csv(files_list[i])
                id_nobs<- sum(complete.cases(id_data))
                total_nobs<-c(id=total_nobs,nobs=id_nobs)
        }
        
        return(total_nobs)
}