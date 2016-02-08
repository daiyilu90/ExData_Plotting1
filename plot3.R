setwd("C:\\Users\\Yilu\\Desktop\\ExData_Plotting1") #set path to where you put ImportData.R
source("ImportData.R") # Run ImportData.R
#Create Plot3
png("ExData_Plotting1\\plot3.png", width = 480, height = 480)
plot(subset$Time, subset$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(subset$Time, subsets$Sub_metering_2, type="l", col="red")
lines(subset$Time, subset$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
dev.off()