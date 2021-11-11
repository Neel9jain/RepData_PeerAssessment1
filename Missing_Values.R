## Total Number of rows with Na 

Activity_Data_compl <- subset(Activity_Data,complete.cases(Activity_Data))
Activity_Data_missing <- subset(Activity_Data,is.na(Activity_Data$steps))
Rows_With_NA <- sum(is.na(Activity_Data))



## Fill Missing data 
##Taking out mean for the complete cases interval wise  wise 
##For the missing cases in the original data set we are replacing them with the 
##mean for the data in the same interval 

Activity_Data_compl_mean  <-tapply(Activity_Data_compl$steps, Activity_Data_compl$interval,mean)

Updated_Activity_Data <- Activity_Data

## creating the new data set with replaced NA's from the original data set.
for (i in 1 : length(Updated_Activity_Data$interval))
{
   if(is.na(Updated_Activity_Data[i,]$steps) ){
     Updated_Activity_Data[i,]$steps <- Activity_Data_compl_mean[names(Activity_Data_compl_mean)==Updated_Activity_Data[i,]$interval]
  
   }
  else {
    print("here")
  }
}


## Histogram for the new data with NA's filled up 

daywise_data_new <- tapply(Updated_Activity_Data$steps,as.Date(Updated_Activity_Data$date,"%Y-%m-%d"),sum)
hist(daywise_data_new,xlab = "Total number of steps taken each day(No NA's)")


## New Means and Medians with the Updated Data set 

Updated_Act_Data_mean <- tapply(Updated_Activity_Data$steps, Updated_Activity_Data$date, mean)
Updated_Act_Data_med  <- tapply(Updated_Activity_Data$steps, Updated_Activity_Data$date, median)



