complete <- function(directory, id = 1:332) {
        files <- list.files( path = directory )[id]
        files <- files[!is.na(files)]
        id <- c() 
        nobs <- c()
        
            for(f in 1:length(files)){
        data <- read.csv( paste(directory, "/", files[f], sep="") )
        id = c(id, as.integer(substring(files[f],0,3)) )                       
         nobs = c(nobs, nrow(na.omit(data))) 
            }
return( data.frame(id=id, nobs=nobs) )
}