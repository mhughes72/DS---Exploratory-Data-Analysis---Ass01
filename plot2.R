#Create line chart for 3 days for Plot #2
plot2 <- function() {
  #Used when testing, not needed for final script
  rowcount=100000
  
  #Read data
  data = read.csv2("household_power_consumption.txt",na.strings = "?")
  # Subset the two dates
  data2 = subset(data,Date=="1/2/2007" | Date=="2/2/2007")
  # Create date-time vector
  dt = strptime(paste(data2$Date,data2$Time),format="%d/%m/%Y %H:%M:%S")

  #Set the png file name
  png(file = "plot2.png")
  
  #Plot the appropriate line graphs
  plot(dt,as.numeric(as.character(data2$Global_active_power)),type="l",xlab="",
       ylab="Global Active Power (kilowatts)")
  
  dev.off()
  #return(limitData)
  
}