file <- read.table("household_power_consumption.txt", 
                   sep = ";", header = TRUE)
png(file = "plot1.png")
f <- filter(file, Date == "1/2/2007"|Date == "2/2/2007")
f[,3] <- as.numeric(f[,3])
hist(f[,3], col = "red", main = "Global Active Power", 
     xlab = "Global Active Power")
dev.off()