powerData<-read.table("household_power_consumption.txt",sep = ";",header = TRUE,na.strings = '?')
powerData$Date<-as.Date(powerData$Date,"%d/%m/%Y")
date1<-as.Date("2007/02/01","%Y/%m/%d")
date2<-as.Date("2007/02/02","%Y/%m/%d")
Data_select<-powerData[powerData$Date>=date1 & powerData$Date<=date2,]
# combine date time to create POSIX style date-time array
dateTime<-paste(Data_select$Date,Data_select$Time)
DateTime<-strptime(dateTime,"%Y-%m-%d %H:%M:%S")