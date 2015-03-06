#Set the working directory
setwd("C:\\Data Science\\Coursera\\John Hopkins\\Exploratory Data Analysis\\Course Project 1")

#Complete Data
Data <- read.table("household_power_consumption.txt",header=TRUE,sep =";")

# Only two days of data i.e between "2007-02-01" and "2007-02-02"
TwoDayData <- Data[as.Date(Data$Date,"%d/%m/%Y") >= "2007-02-01" & as.Date(Data$Date,"%d/%m/%Y") <= "2007-02-02",]

#device
png(filename='Plot1.png',width=480,height=480,units='px')


#Plot 1
hist(as.numeric(TwoDayData$Global_active_power),main = paste("Global Active Power"),col = "red",xlab = "Global Active Power (kilowatts)")

# Copy it as png
#dev.copy(png,file = "Plot1.png")
dev.off()