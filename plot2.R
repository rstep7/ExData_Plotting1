## Load Data Sets
dataFilepath <- "./household_power_consumption.txt"
power <- read.table(dataFilepath,skip=66637,nrows=2880,sep=";")
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

############################
# Plot 2
############################
png("plot2.png", width=480, height=480)
dt <- paste(power$Date, power$Time, sep=" ")
dt <- strptime(dt,"%d/%m/%Y %H:%M:%S")
plot(dt,power$Global_active_power,
     type="l",
     ylab="Global Active Power (kilowatts)",
     xlab=""
)
dev.off()

