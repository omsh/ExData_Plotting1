source("readData.R")

dev.off()
png(filename = "plot3.png", 
    width = 480, height = 480, units = "px", bg = "transparent")

plot(subhh$date_time, subhh$Sub_metering_1, type="l", ylab = "Energy sub metering", xlab="")
points(subhh$date_time, subhh$Sub_metering_2, type="l", col="red", ylab = "Energy sub metering", xlab="")
points(subhh$date_time, subhh$Sub_metering_3, type="l", col="blue", ylab = "Energy sub metering", xlab="")

legendText <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
legend("topright", lty=c(1,1,1), lwd=c(2,2,2), col = c("black", "red", "blue"), 
       legend = legendText)

dev.off()