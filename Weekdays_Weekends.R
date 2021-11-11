## Adding Factor Variables based on days in The data set 

Updated_Activity_Data$day  <- weekdays(as.Date(Updated_Activity_Data$date,format="%Y-%m-%d"))




weekdays1 <- c('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday')
Updated_Activity_Data$day <- factor(Updated_Activity_Data$day %in% weekdays1, 
                   levels = c(FALSE, TRUE) ,labels=c('weekend', 'weekday'))






## Calculating mean for the time series plot
Mean_Steps_df<- aggregate(steps ~ interval + day, data = Updated_Activity_Data, mean)



## Making the Plot 

xyplot(steps ~ interval | day, data = Mean_Steps_df, type = "l", lwd = 2,
       layout = c(1, 2), xlab = "interval", ylab = "Number of steps")
