file <- read.delim("household_power_consumption.txt",sep = ";",na.strings="?",
                   stringsAsFactors=F)

myfile <- subset(file,Date %in% c("1/2/2007","2/2/2007"))
datetime <- strptime(paste(myfile$Date, myfile$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(myfile$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
datetime
