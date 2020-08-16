file <- read.table("household_power_consumption.txt", 
                   sep = ";", header = TRUE)
globalap <- file[,"Global_active_power"]
globalap <- as.numeric(globalap)
globalap <- globalap[!is.na(globalap)]
hist(globalap, main = "Global Active Power", col = "red", 
     xlab = "Global Active Power")