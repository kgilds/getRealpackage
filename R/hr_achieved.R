#' Percent of students achieving healthy relationship outcome


#' Determine the percent of students achieving the healthy releationship outcome
#
#' @param Write in Pre or Post for time the survey was taken
#' hr_achieved()

hr_achieved_matched <- function() {
        
        high <- filter(matched_hr, Post >=4.45) #name df matched_hr
        hr_temp_1 <- nrow(high)/nrow(matched_hr)
        hr_temp_1 <- round(hr_temp_1*100,2)
        hr_temp_1 <- paste0(hr_temp_1,"%", sep="")
        pander(hr_temp_1)
        
    }
#' Percent of students achieving healthy relationship outcome 
#' Determine the percent of students achieving the healthy releationship outcome at Pre Survey Time outcome
#
#' 
#' hr_achieved_pre()



hr_achieved_pre <- function() {
    
    high     <- filter(pre_hr, hr.avg >=4.45) #name df pre_hr
    hr_pre_temp_1 <- nrow(high)/nrow(pre_hr)
    hr_pre_temp_1 <- round(hr_temp_1*100,2)
    hr_pre_temp_1 <- paste0(hr_temp_1,"%", sep="")
    pander(hr_pre_temp_1)
    
}   


#' Percent of students achieving healthy relationship outcome 
#' Determine the percent of students achieving the healthy releationship outcome at Post Survey Time 
#
#' 
#' hr_achieved_pre()


hr_achieved_post <- function() {
    
    high     <- filter(post_hr, hr.avg >=4.45) #name df post_hr
    hr_post_temp_1 <- nrow(high)/nrow(post_hr)
    hr_post_temp_1 <- round(hr_temp_1*100,2)
    hr_post_temp_1 <- paste0(hr_temp_1,"%", sep="")
    pander(hr_post_temp_1)
    
}   