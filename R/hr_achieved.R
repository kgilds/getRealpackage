#' Percent of students achieving healthy relationship outcome


#' Determine the percent of students achieving the healthy releationship outcome
#
#' @param Write in Pre or Post for time the survey was taken
#' hr_achieved()

hr_achieved <- function(Time) {
    
        if(Time =="Pre"){
            dat <-filter(hr, Time =="Pre")
            
        } else if(Time == "Post"){
            dat <- filter(hr, Year_Id =="Post")
        
        }
        
        
        high <- filter(dat, Post >=4.45)
        hr_temp_1 <- nrow(high)/nrow(dat)
        hr_temp_1 <- round(hr_temp_1*100,2)
        hr_temp_1 <- paste0(hr_temp_1,"%", sep="")
        pander(hr_temp_1)
        
    }   
 