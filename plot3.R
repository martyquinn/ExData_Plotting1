hon <- read.table('./household_power_consumption.txt',sep=";",header=TRUE,  nrows=30); #imports features.txt
ho <- read.table('./household_power_consumption.txt', sep=";",skip=66637, nrows=2880); #imports features.txt
colnames(ho) <-names(hon)
dt <- paste(ho$Date, ho$Time, sep=' ')
hodate <- strptime(dt, format="%d/%m/%Y %H:%M:%S")
ho$Datetime <- hodate

dev.off()
with (ho, plot(Datetime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering"))
with(ho, lines(Datetime, Sub_metering_2, type="l", col="red"))
with(ho, lines(Datetime, Sub_metering_3, type="l", col="blue"))
legend("topright", lty=1, col=c("black", "blue", "red"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
png("plot3.png")
with (ho, plot(Datetime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering"))
with(ho, lines(Datetime, Sub_metering_2, type="l", col="red"))
with(ho, lines(Datetime, Sub_metering_3, type="l", col="blue"))
legend("topright", lty=1, col=c("black", "blue", "red"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

