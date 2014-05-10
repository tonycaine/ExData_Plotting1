# Author: Tony caine
#   Date: May 10 2014
#

# there are 4 plots to embed in a 2* 2 panel
# simplest to understand if each in a function that returns the plot
# so functions get_plotX

# these are derivatives of the rest of the exercise

get_plot1 <- function() {
  # plot Global Active Power (kilowatts) against datetime
  p.main=''
  p.xlab = ''
  p.ylab = 'Global Active Power'
  plot(
    type='l',
    x=power2days$dt,
    y=power2days$Global_active_power, 
    col=p.col, main=p.main, xlab=p.xlab, ylab=p.ylab)
}

get_plot2 <- function() {
  # plot voltage against datetime
  p.main=''
  p.xlab = ''
  p.ylab = 'Voltage'
  
  # 
  par(xaxp  = c(224, 246, 7))
  
  plot(
    type='l',
    x=power2days$dt,
    y=power2days$Voltage, 
    cex = 2,
    col=p.col, main=p.main, xlab=p.xlab, ylab=p.ylab
    #, par(xaxp  = c(224, 246, 7))
    )  
}



get_plot3 <- function() {
  # plot all 3 of the Sub metering levels on a plot
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
  legend("topright", inset=2, lty = 1,box.lwd = 0, 
         box.col = "white", 
         #bg = "white",
         col=c('black','red','blue'),  c('Sub_metering_1','Sub_metering_3','Sub_metering_3'))
}

get_plot4 <- function() {
  #pot the Global_reactive_power
  p.main=''
  p.xlab = ''
  p.ylab = 'Global_reactive_power'
  plot(
    type='l',
    x=power2days$dt,
    y=power2days$Global_reactive_power, 
    col=p.col, main=p.main, xlab=p.xlab, ylab=p.ylab)  
}

#now put it all together, open the graphic file and send all these plots to the file

p.filename ='plot4.png'
p.width=480
p.height=480
p.units="px"

#make it to the png directly - control the size

png(filename = p.filename,
    width = p.width, height = p.height, units = p.units)


#make a 4 plot thingie
par(mfrow=c(2,2))
#get each plot
get_plot1()
get_plot2()
get_plot3()
get_plot4()
#close the png
dev.off()
