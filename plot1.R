## Load Data Sets
dataFilepath <- "./household_power_consumption.txt"
power <- read.table(dataFilepath,skip=66637,nrows=2880,sep=";")
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

############################
# Plot 1
############################
png("plot1.png", width=480, height=480)
hist(power$Global_active_power,
     col="red",
     xlab="Global Active Power (kilowatts)",
     main="Global Active Power"
     )
dev.off()
