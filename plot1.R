source("readData.R")

dev.off()
png(filename = "plot1.png", 
    width = 480, height = 480, units = "px", bg = "transparent")

hist(subhh$Global_active_power, col="red", 
     xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

dev.off()
