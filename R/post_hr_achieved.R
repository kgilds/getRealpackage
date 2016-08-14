#' Percent of students achieving healthy relationship outcome 
#' Determine the percent of students achieving the healthy releationship outcome at Post Survey Time 
#
#' 
#' hr_achieved_post()


hr_achieved_post <- function() {
    
    high     <- filter(post_hr, hr.avg >=4.45) #name df post_hr
    hr_post_temp_1 <- nrow(high)/nrow(post_hr)
    hr_post_temp_1 <- round(hr_post_temp_1*100,2)
    hr_post_temp_1 <- paste0(hr_post_temp_1,"%", sep="")
    pander(hr_post_temp_1)
    
}   