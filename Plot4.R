#Set the working directory
setwd("C:\\Data Science\\Coursera\\John Hopkins\\Exploratory Data Analysis\\Course Project 1")

#Complete Data
Data <- read.table("household_power_consumption.txt",header=TRUE,sep =";")

# Only two days of data i.e between "2007-02-01" and "2007-02-02"
TwoDayData <- Data[as.Date(Data$Date,"%d/%m/%Y") >= "2007-02-01" & as.Date(Data$Date,"%d/%m/%Y") <= "2007-02-02",]

#device
png(filename='Plot4.png',width=480,height=480,units='px')

# Four graphs
par(mfrow=c(2,2))

#Plotting The four graphs 
#Plot 1
plot(TwoDayData$DateTime,TwoDayData$Global_active_power,ylab='Global Active Power',xlab='',type='l')

#Plot 2
plot(TwoDayData$DateTime,TwoDayData$Voltage,ylab='Voltage',xlab='datetime',type='l')

#Plot 3
LineColors<-c('black','red','blue')
LegendLabels<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(TwoDayData$DateTime,TwoDayData$Sub_metering_1,type='l',col=LineColors[1],xlab='',ylab='Energy sub metering')
lines(TwoDayData$DateTime,TwoDayData$Sub_metering_2,col=LineColors[2])
lines(TwoDayData$DateTime,TwoDayData$Sub_metering_3,col=LineColors[3])

#Plot 4
plot(TwoDayData$DateTime,TwoDayData$Global_reactive_power,ylab = 'Global_reactive_power',xlab='datetime',type='l')

# legend
legend('topright',legend=LegendLabels,col=LineColors,lty='solid')

# Copy it as png
#dev.copy(png,file = "Plot1.png")
dev.off()