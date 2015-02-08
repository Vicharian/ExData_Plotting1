# Read in the data
ad=read.table("household_power_consumption.txt",sep=";",header=T)

# Create a date time column and subset the data
ad$DT = strptime(paste(ad$Date,ad$Time, sep =" "),"%d/%m/%Y %H:%M:%S")
d=subset(ad, DT >= "2007-02-01" & DT < "2007-02-03")
  
# Generate and print the chart
png(filename="plot1.png", width=480, height=480)
hist(d$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()

