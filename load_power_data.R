library(plyr)
library(lubridate)

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

power2Days<-power_all[ power_all$Date %in% c('1/2/2007', '2/2/2007') , ]
head(power2Days$Date, 4)
tail(power2Days$Date, 4)

#clean out full dataframe
rm(power_all)

#add a dt (datetime) column to the data frame
power2Days[,'dt'] <- dmy_hms(sprintf("%s %s", as.character(power2Days[, 'Date']), as.character(power2Days[,'Time'])))

