#Create four plots for Assignment data for Plot#4
plot4 <- function() {
  #Used for testing
  #rowcount=100000
  #Read data and substitute data
  data = read.csv2("household_power_consumption.txt",na.strings = "?")
  data2 = subset(data,Date=="1/2/2007" | Date=="2/2/2007")
  dt = strptime(paste(data2$Date,data2$Time),format="%d/%m/%Y %H:%M:%S")
  
  #Set the png file name
  png(file = "plot4.png")
  
  #Plot the appropriate line graphs and give them some space.
  par(mfrow = c(2,2), mar=c(5,4,2,1))
  

#Plot the four charts:
  plot(dt,as.numeric(as.character(data2$Global_active_power)),type="l",xlab="", ylab="Global Active Power (kilowatts)")
  plot(dt,as.numeric(as.character(data2$Voltage)),type="l",xlab="datetime", ylab="Voltage")
  plot(dt,as.numeric(as.character(data2$Sub_metering_1)),type="l",ylab="Energy sub metering", xlab="")
  lines(dt,as.numeric(as.character(data2$Sub_metering_2)),type="l",col="red")
  lines(dt,as.numeric(as.character(data2$Sub_metering_3)),type="l",col="blue")
  legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"),bty="n")
  plot(dt,as.numeric(as.character(data2$Global_reactive_power)),xlab="datetime",ylab="Global_reactive_power",type="l")

  dev.off()
  
 # return(limitData)
  
}