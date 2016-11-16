hon <- read.table('./household_power_consumption.txt',sep=";",header=TRUE,  nrows=30); #imports features.txt
ho <- read.table('./household_power_consumption.txt', sep=";",skip=66637, nrows=2880); #imports features.txt
colnames(ho) <-names(hon)
dt <- paste(ho$Date, ho$Time, sep=' ')
hodate <- strptime(dt, format="%d/%m/%Y %H:%M:%S")
ho$Datetime <- hodate

dev.off()
with (ho, hist(Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)"))
png("plot1.png")
with (ho, hist(Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)"))
dev.off()
