## Part 2 of assignment 

daywise_data <- tapply(Activity_Data$steps,as.Date(Activity_Data$date,"%Y-%m-%d"),sum)
hist(daywise_data,xlab = "Total number of steps taken each day")


## Calculating mean and median day wise 

Act_Data_mean <- tapply(Activity_Data$steps, Activity_Data$date, mean)
Act_Data_med  <- tapply(Activity_Data$steps, Activity_Data$date, median)




                            