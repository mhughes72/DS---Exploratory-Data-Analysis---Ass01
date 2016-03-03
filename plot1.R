#Create histogram for Plot#1
plot1 <- function() {
 # rowcount=2000
  #Read data
  data = read.csv("household_power_consumption.txt",na.strings = "?")

  
  data2 = subset(data,Date=="1/2/2007" | Date=="2/2/2007")
  
  #Set the png file name
  png(file = "plot1.png")
  
  #Create and define Histogram
  hist(as.numeric(as.character(data2$Global_active_power)), main="Global Active Power",col="red",
       xlab="Global Active Power (kilowatts)")

  
  dev.off()
  #Return Histogram
  #return(data)
  
}