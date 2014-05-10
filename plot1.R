# Author: Tony caine
#   Date: May 10 2014
#
#make a  historgam plot of 'Global Active Power (kilowatts)' 

p.breaks=20
p.main='Global Active Power'
p.xlab = 'Global Active Power (kilowatts)'
p.ylab = 'Frequency'
p.filename ='plot1.png'
  
hist(power2days$Global_active_power, col="red", breaks = p.breaks, main=p.main, xlab=p.xlab, ylab=p.ylab)
dev.copy(png, file=p.filename )
dev.off()
