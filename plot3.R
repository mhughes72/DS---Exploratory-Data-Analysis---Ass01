#Create a line graph for chart #4
plot3 <- function() {
  #Used for testing
  #rowcount=100000
  #Read data
  data = read.csv2("household_power_consumption.txt",na.strings = "?")
  
  #Create a new data frame for the 3 dates
  data2 = subset(data,Date=="1/2/2007" | Date=="2/2/2007")
  dt = strptime(paste(data2$Date,data2$Time),format="%d/%m/%Y %H:%M:%S")
  
  #Set the png file name
  png(file = "plot3.png")
  
  #Plot the appropriate line graphs
  plot(dt,as.numeric(as.character(data2$Sub_metering_1)),type="l",ylab="Energy sub metering", xlab="")
  lines(dt,as.numeric(as.character(data2$Sub_metering_2)),type="l",col="red")
  lines(dt,as.numeric(as.character(data2$Sub_metering_3)),type="l",col="blue")
  legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
         lty=c(1,1,1),col=c("black","red","blue"))
 
   dev.off()
  #return(limitData)
  
}