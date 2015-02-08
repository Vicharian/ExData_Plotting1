# Read in the data
ad=read.table("household_power_consumption.txt",sep=";",header=T)

# Create a date time column and subset the data
ad$DT = strptime(paste(ad$Date,ad$Time, sep =" "),"%d/%m/%Y %H:%M:%S")
d=subset(ad, DT >= "2007-02-01" & DT < "2007-02-03")

# Generate and print the chart
png(filename="plot2.png", width=480, height=480)
plot(d$DT,d$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
