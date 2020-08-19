file <- read.table("household_power_consumption.txt", 
                   sep = ";", header = TRUE)
png(file = "plot2.png")

f <- filter(file, Date == "1/2/2007"|Date == "2/2/2007")
f[,3] <- as.numeric(f[,3])
plot(1:nrow(f), f[,3], ylab = "Global Active Power (kilowatts)",
     xlab = "", type = 'l')

dev.off()