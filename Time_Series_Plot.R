

Activity_Data_compl <- subset(Activity_Data,complete.cases(Activity_Data))
mean_steps <- tapply(Activity_Data_compl$steps, Activity_Data_compl$interval, mean)


plot(names(mean_steps),mean_steps,type = "l",xlab = "Interval",ylab = "No of Steps")

## 5 min Interval with max steps 
Max_Mean_steps <- mean_steps[mean_steps== max(mean_steps)]

## Drawing the Max 5 min interval on the graph 
abline(v=names(Max_Mean_steps),h=Max_Mean_steps,col="Blue")





