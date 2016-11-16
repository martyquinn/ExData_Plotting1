hon <- read.table('./household_power_consumption.txt',sep=";",header=TRUE,  nrows=30); #imports features.txt
ho <- read.table('./household_power_consumption.txt', sep=";",skip=66637, nrows=2880); #imports features.txt
colnames(ho) <-names(hon)
dt <- paste(ho$Date, ho$Time, sep=' ')
hodate <- strptime(dt, format="%d/%m/%Y %H:%M:%S")
ho$Datetime <- hodate

dev.off()
with (ho, plot(Datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
png("plot2.png")
with (ho, plot(Datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()

