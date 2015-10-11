source("ReadData.R")
png(filename = "plot4.png",width = 480,height = 480,units = "px")
par(mfrow=c(2,2))
#subplot 1
plot(DateTime, Data_select$Global_active_power,type="l",xlab="",ylab="Gloabal Active Power")
#subplot 2
plot(DateTime, Data_select$Voltage,type = "l",xlab="datetime",ylab="Voltage")
#subplot 3
plot(DateTime,Data_select$Sub_metering_1,type ="l",xlab = "",ylab = "Energy sub metering")
lines(DateTime,Data_select$Sub_metering_2,type ="l",col = "red")
lines(DateTime,Data_select$Sub_metering_3,type ="l",col = "blue")
legend("topright",legend = colnames(powerData[7:ncol(powerData)]),lty=1,col=c("black","red","blue"))
#subplot 4
plot(DateTime, Data_select$Global_reactive_power,type = "l",xlab="datetime",ylab="Global_reactive_power")
dev.off()