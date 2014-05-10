# Author: Tony caine
#   Date: May 10 2014
#
#make a  historgam plot of 'Global Active Power (kilowatts)' 

p.breaks=20
p.main='Global Active Power'
p.xlab = 'Global Active Power (kilowatts)'
p.ylab = 'Frequency'
p.filename ='plot1.png'
p.width=480
p.height=480
p.units="px"
p.col='red'
  
#make it to the Window
# hist(power2days$Global_active_power, col=p.col, breaks = p.breaks, main=p.main, xlab=p.xlab, ylab=p.ylab)
# dev.copy(png, file=p.filename )
# dev.off()

#make it to the png directly - control the size
png(filename = p.filename,
    width = p.width, height = p.height, units = p.units)
hist(power2days$Global_active_power, col=p.col, breaks = p.breaks, main=p.main, xlab=p.xlab, ylab=p.ylab)
dev.off()
