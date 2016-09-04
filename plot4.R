source("readData.R")

dev.off()
png(filename = "plot4.png", 
    width = 480, height = 480, units = "px", bg = "transparent")

par(mfrow = c(2,2))

plot(subhh$date_time, subhh$Global_active_power, 
     type="l", ylab = "Global Active Power", xlab="")

plot(subhh$date_time, subhh$Voltage, 
     type="l", ylab = "Voltage", xlab="datetime")

plot(subhh$date_time, subhh$Sub_metering_1, type="l", ylab = "Energy sub metering", xlab="")
points(subhh$date_time, subhh$Sub_metering_2, type="l", col="red", ylab = "Energy sub metering", xlab="")
points(subhh$date_time, subhh$Sub_metering_3, type="l", col="blue", ylab = "Energy sub metering", xlab="")

legendText <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
legend("topright", lty=c(1,1,1), lwd=c(1,1,1), col = c("black", "red", "blue"), 
       legend = legendText, bty="n")

plot(subhh$date_time, subhh$Global_reactive_power, 
     type="l", ylab="Global_reactive_power", xlab="datetime")

dev.off()