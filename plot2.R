source("readData.R")

dev.off()
png(filename = "plot2.png", 
    width = 480, height = 480, units = "px", bg = "transparent")

plot(subhh$date_time, subhh$Global_active_power, 
     type="l", ylab = "Global Active Power (kilowatts)", xlab="")

dev.off()
