setwd("C:\\Users\\Yilu\\Desktop\\ExData_Plotting1") #set path to where you put ImportData.R
source("ImportData.R") # Run ImportData.R
#Create Plot2
png("ExData_Plotting1\\plot2.png", width = 480, height = 480)
plot(subset$Time,  subset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()