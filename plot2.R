source("ReadData.R")
png(filename = "plot2.png",width = 480,height = 480,units = "px")
plot(DateTime, Data_select$Global_active_power,type="l",xlab="",ylab="Gloabal Active Power (kilowatts)")
dev.off()