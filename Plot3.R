#Set the working directory
setwd("C:\\Data Science\\Coursera\\John Hopkins\\Exploratory Data Analysis\\Course Project 1")

#Complete Data
Data <- read.table("household_power_consumption.txt",header=TRUE,sep =";")

# Only two days of data i.e between "2007-02-01" and "2007-02-02"
TwoDayData <- Data[as.Date(Data$Date,"%d/%m/%Y") >= "2007-02-01" & as.Date(Data$Date,"%d/%m/%Y") <= "2007-02-02",]

#device
png(filename='Plot3.png',width=480,height=480,units='px')

#Plot 3
LineColors<-c('black','red','blue')
LegendLabels<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(TwoDayData$DateTime,TwoDayData$Sub_metering_1,type='l',col=LineColors[1],xlab='',ylab='Energy sub metering')
lines(TwoDayData$DateTime,TwoDayData$Sub_metering_2,col=LineColors[2])
lines(TwoDayData$DateTime,TwoDayData$Sub_metering_3,col=LineColors[3])

# legend
legend('topright',legend=LegendLabels,col=LineColors,lty='solid')

# Copy it as png
#dev.copy(png,file = "Plot1.png")
dev.off()