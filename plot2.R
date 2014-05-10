# Author: Tony caine
#   Date: May 10 2014
#
#make a  line plot of 'Global Active Power (kilowatts)' 

p.main=''
p.xlab = ''
p.ylab = 'Global Active Power (kilowatts)'
p.filename ='plot2.png'
p.width=480
p.height=480
p.units="px"
p.col='black'
  


#make it to the png directly - control the size

png(filename = p.filename,
   width = p.width, height = p.height, units = p.units)
    
plot(
  type='l',
  x=power2days$dt,
  y=power2days$Global_active_power, 
  col=p.col, main=p.main, xlab=p.xlab, ylab=p.ylab)

dev.off()
