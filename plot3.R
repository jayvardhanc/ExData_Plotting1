source("ReadData.R")
png(filename = "plot3.png",width = 480,height = 480,units = "px")
plot(DateTime,Data_select$Sub_metering_1,type ="l",xlab = "",ylab = "Energy sub metering")
lines(DateTime,Data_select$Sub_metering_2,type ="l",col = "red")
lines(DateTime,Data_select$Sub_metering_3,type ="l",col = "blue")
legend("topright",legend = colnames(powerData[7:ncol(powerData)]),lty=1,col=c("black","red","blue"))
dev.off()