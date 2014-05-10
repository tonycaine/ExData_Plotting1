library(plyr)
library(lubridate)

#library(pryr)
#object_size(1:10)

dir<-'C:\\_store\\@stats\\data-course\\exploratory-analysis\\assess1-GIT\\ExData_Plotting1'
setwd(dir)

file<-'household_power_consumption.txt'

power_all<-read.csv(file, header = TRUE, sep = ";", dec = ".", fill = TRUE, comment.char = "", na.strings= '?')

str(power_all)
head(power_all,3)


head(power_all$Date)

#We will only be using data from the dates 2007-02-01 and 2007-02-02.
#but in the format that the dates were loaded as factors

count(power_all$Date %in% c('1/2/2007', '2/2/2007'))
#todo: clean up all fields to be lower case - maybe.

# power2days<-power2Days
# rm(power2Days)

power2days<-power_all[ power_all$Date %in% c('1/2/2007', '2/2/2007') , ]
head(power2days$Date, 4)
tail(power2days$Date, 4)

#clean out full dataframe
rm(power_all)

#add a 'datetime' column to the end of the data frame
#power2days[,'datetime'] <- dmy_hms(sprintf("%s %s", as.character(power2days[, 'Date']), as.character(power2days[,'Time'])))

# rm(event_datetime)
event_datetime<- as.data.frame( dmy_hms(sprintf("%s %s", as.character(power2Days[, 'Date']), as.character(power2Days[,'Time']))))
power2days





colnames(power2days)
# 
# > colnames(power2days)
# [1] "Date"                 
# [2] "Time"                 
# [3] "Global_active_power"  
# [4] "Global_reactive_power"
# [5] "Voltage"              
# [6] "Global_intensity"     
# [7] "Sub_metering_1"       
# [8] "Sub_metering_2"       
# [9] "Sub_metering_3"       
# [10] "dt"            


