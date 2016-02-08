setwd("C:\\Users\\Yilu\\Desktop\\ExData_Plotting1") #set path to where you put ImportData.R
source("ImportData.R") # Run ImportData.R
#Create Plot4
png("ExData_Plotting1\\plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))	
plot(subset$Time, subset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
plot(subset$Time, subset$Voltage, type = "l", xlab = "datetime", ylab = "Global Active Power")
plot(subset$Time, subset$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(subset$Time, subset$Sub_metering_2, type="l", col="red")
lines(subset$Time, subset$Sub_metering_3, type="l", col="blue")
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(subset$Time, subset$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Active Power")
dev.off()


