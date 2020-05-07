file <- read.delim("household_power_consumption.txt",sep = ";",na.strings="?",
                   stringsAsFactors=F)

myfile <- subset(file,Date %in% c("1/2/2007","2/2/2007"))
d <- as.Date(file$Date,format="%d/%m/%Y")
hist(file$Global_active_power, col="red",xlab="Global Active Power (kilowatts)",
     main="Global Active Power", ylab = "Frequency")

png("plot1.png", width=480, height=480)
dev.off()

