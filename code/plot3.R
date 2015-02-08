# Read in the data
ad=read.table("household_power_consumption.txt",sep=";",header=T)

# Create a date time column and subset the data
ad$DT = strptime(paste(ad$Date,ad$Time, sep =" "),"%d/%m/%Y %H:%M:%S")
d=subset(ad, DT >= "2007-02-01" & DT < "2007-02-03")

# Generate and print the chart
png(filename="plot3.png", width=480, height=480)
plot(d$DT,d$Sub_metering_1, type="l", xlab="", ylab="Energy Sub Metering")
lines(d$DT,d$Sub_metering_2, col="red")
lines(d$DT,d$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black", "red", "blue"))
dev.off()


