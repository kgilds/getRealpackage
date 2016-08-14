#' Percent of students achieving healthy relationship outcome


#' Determine the percent of students achieving the healthy releationship outcome
#
#' 
#' hr_achieved_matched()

hr_achieved_matched <- function() {
        
        high <- filter(matched_hr, Post >=4.45) #name df matched_hr
        hr_temp_1 <- nrow(high)/nrow(matched_hr)
        hr_temp_1 <- round(hr_temp_1*100,2)
        hr_temp_1 <- paste0(hr_temp_1,"%", sep="")
        pander(hr_temp_1)
        
    }
