#The data is read through the ReadData function which is called in each of the "plot" functions
source("ReadData.R")
png(filename = "plot1.png",width = 480,height = 480, units = "px")
hist(Data_select$Global_active_power,col = "red",main = "Global Active Power",xlab = "Global Active Power (kilowatts)")
dev.off()