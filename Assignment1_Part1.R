pollutantmean<-function(directory, pollutant, id=1:332){
        files_list<-list.files("specdata",full.names=TRUE)
        data<-data.frame()
        for (i in 23){
                data<-rbind(data, read.csv (files_list[i]))
        }
        data_subset<-data[ ,pollutant]
        mean (data_subset ,na.rm=TRUE)
}