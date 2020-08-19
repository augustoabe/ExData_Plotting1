file <- read.table("household_power_consumption.txt", 
                   sep = ";", header = TRUE)
png(file = "plot4.png")
f <- filter(file, Date == "1/2/2007"|Date == "2/2/2007")
par(mfrow = c(2, 2), mar = c(4.2, 1, 1, 1))

f[,3] <- as.numeric(f[,3])
plot(1:nrow(f), f[,3], ylab = "Global Active Power",
     xlab = "", type = 'l')

f[,5] <- as.numeric(f[,5])
plot(1:nrow(f), f[,5], ylab = "Voltage", xlab = "datetime", type = "l")

f[,"Sub_metering_1"] <- as.numeric(f[,"Sub_metering_1"])
f[,"Sub_metering_2"] <- as.numeric(f[,"Sub_metering_2"])
f[,"Sub_metering_3"] <- as.numeric(f[,"Sub_metering_3"])
plot( 1:nrow(f), f[,"Sub_metering_1"], type = 'n',
      ylab = "Energy sub metering", xlab = "")
points(1:nrow(f), f[,"Sub_metering_1"], type = 'l' )
points(1:nrow(f), f[,"Sub_metering_2"], col = "red", type = 'l' )
points(1:nrow(f), f[,"Sub_metering_3"], col = "blue", type ='l' )
legend("topright", pc = '-',cex = 0.5, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

f[,4] <- as.numeric(f[,4])
plot(1:nrow(f), f[,4], type = 'l', ylab = "Global_reactive_power", 
     xlab = "datetime")

dev.off()