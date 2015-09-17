best <- function(state, outcome) {
        ## Read outcome data
        outcome_data<-read.csv("outcome-of-care-measures.csv",colClasses = "character") # if not using "colClass" option, death rate will be factor class and as.numberic() will get wrong data
        statename<-outcome_data[,7] 
        
        uniquestatename<-unique(statename[!is.na(statename)])
        orderstatename <- uniquestatename[order(uniquestatename)]
        
        ## Check that state and outcome are valid
        
        datasubset<- list(outcomenameindex=c("heart attack","heart failure","pneumonia"),
                          state=orderstatename,
                          deathrate_index=list(heart.attack=11,heart.failure=17,pneumonia=23)
        )
        if(!is.element(state,datasubset$state)){
                stop("invalid state")
        }
        if(!is.element(outcome,datasubset$outcome)){
                stop("invalid outcome")
        }
        datasubsetindex <- which(datasubset$outcomenameindex==outcome)         
        deathrate <- suppressWarnings(as.numeric(outcome_data[,datasubset$deathrate_index[[datasubsetindex]]]))
        orderhospital<-outcome_data[order(deathrate,outcome_data[,2]),]
        orderhospital[orderhospital$State==state,][,2][1]
}