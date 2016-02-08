setwd("C:\\Users\\Yilu\\Desktop") #set your directory 
if(!file.exists("data")){dir.create("data")} # create foler where you put your file
fileUrl <- "https://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip"
download.file(fileUrl,destfile="data\\exdata-data-household_power_consumption.zip") #download file
unzip(zipfile="data\\exdata-data-household_power_consumption.zip",exdir="./data") #unzip  file 
data<-read.table("data\\household_power_consumption.txt",sep=";",header=T,na.strings = "?") #read in data
subset<-data[which(data$Date=="1/2/2007"|data$Date=="2/2/2007"),] #subset data
time<- paste(subset$Date,subset$Time) #combine date and time
subset$Time<-strptime(time, "%d/%m/%Y %H:%M:%S") #format time
subset$Date <- as.Date(subset$Date,"%d/%m/%Y") #format date
subset$Date <- as.Date(subset$Date,"%Y-%m-%d") #format date
#data is ready

