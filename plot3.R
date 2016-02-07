## Load Data Sets
dataFilepath <- "./household_power_consumption.txt"
power <- read.table(dataFilepath,skip=66637,nrows=2880,sep=";")
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

############################
# Plot 3
############################
png("plot3.png", width=480, height=480)
dt <- paste(power$Date, power$Time, sep=" ")
dt <- strptime(dt,"%d/%m/%Y %H:%M:%S")
plot(dt,power$Sub_metering_1,
     type="l",
     ylab="Energy sub metering",
     xlab="",
     col="black"
)

lines(dt,power$Sub_metering_2,
     type="l",
     col="red"
)

lines(dt,power$Sub_metering_3,
      type="l",
      col="blue"
)

legend("topright",
       lty=1,
       lwd=3,
       legend = c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"),
       col = c("black","red","blue")
)
dev.off()

