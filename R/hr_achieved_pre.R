#' Percent of students achieving healthy relationship outcome 
#' Determine the percent of students achieving the healthy releationship outcome at Pre Survey Time outcome
#
#' 
#' hr_achieved_pre()

hr_achieved_pre <- function() {
    
    high     <- filter(pre_hr, hr.avg >=4.45) #name df pre_hr
    hr_pre_temp_1 <- nrow(high)/nrow(pre_hr)
    hr_pre_temp_1 <- round(hr_pre_temp_1*100,2)
    hr_pre_temp_1 <- paste0(hr_pre_temp_1,"%", sep="")
    pander(hr_pre_temp_1)
    
}   
