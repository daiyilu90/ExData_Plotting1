setwd("C:\\Users\\Yilu\\Desktop\\ExData_Plotting1") #set path to where you put ImportData.R
source("ImportData.R") # Run ImportData.R
#Create Plot1
png("ExData_Plotting1\\plot1.png", width = 480, height = 480) 
hist(subset$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
dev.off()