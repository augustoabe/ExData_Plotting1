file <- read.table("household_power_consumption.txt", 
                   sep = ";", header = TRUE)

png(file = "plot3.png")
f <- filter(file, Date == "1/2/2007"|Date == "2/2/2007")
f[,"Sub_metering_1"] <- as.numeric(f[,"Sub_metering_1"])
f[,"Sub_metering_2"] <- as.numeric(f[,"Sub_metering_2"])
f[,"Sub_metering_3"] <- as.numeric(f[,"Sub_metering_3"])
plot( 1:nrow(f), f[,"Sub_metering_1"], type = 'n',
      ylab = "Energy sub metering", xlab = "")
points(1:nrow(f), f[,"Sub_metering_1"], type = 'l' )
points(1:nrow(f), f[,"Sub_metering_2"], col = "red", type = 'l' )
points(1:nrow(f), f[,"Sub_metering_3"], col = "blue", type ='l' )
legend("topright", pc = '-', col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()