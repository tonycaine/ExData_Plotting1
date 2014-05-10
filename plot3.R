# Author: Tony caine
#   Date: May 10 2014
#
#make a  line plot of the three sub_metering_X'  series

p.main=''
p.xlab = ''
p.ylab = 'Energy Sub metering'
p.filename ='plot3.png'
p.width=480
p.height=480
p.units="px"
  


#make it to the png directly - control the size

png(filename = p.filename,
   width = p.width, height = p.height, units = p.units)
    
# plot(
#   type='l',
#   x=power2days$dt,
#   y=power2days$Global_active_power, 
#   col=p.col, main=p.main, xlab=p.xlab, ylab=p.ylab)

p.xrange <- range(power2days$dt) 
p.yrange <- range(power2days$Sub_metering_1) 

plot(
  x=p.xrange,
  y=p.yrange,
  type='n',
  col=p.col, main=p.main, xlab=p.xlab, ylab=p.ylab)

lines( x=power2days$dt, y=power2days$Sub_metering_1, col='black')
lines( x=power2days$dt, y=power2days$Sub_metering_2, col='red')
lines( x=power2days$dt, y=power2days$Sub_metering_3, col='blue')
legend("topright",lty = 1,  col=c('black','red','blue'),  c('Sub_metering_1','Sub_metering_3','Sub_metering_3'))


dev.off()
