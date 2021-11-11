
## reading activity data from zipped folder 

File_name <- unzip("activity.zip", list=TRUE)
if(length(File_name$Name) == 1)
{
  
Activity_Data <- read.table(unz("activity.zip", File_name$Name),header=T, quote="\"", sep=",")
}  else
  {
  
  print("Zipped file contains more than 1 file")
  for(i in 1:length(File_name$Name))
  {
    Activity_Data1 <- read.table(unz("activity.zip", File_name$Name),header=T, quote="\"", sep=",")
    Activity_Data <- rbind(Activity_Data1,Activity_Data)
  }
    
}


