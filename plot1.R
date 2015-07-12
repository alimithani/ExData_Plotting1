datafile <- "./data/household_power_consumption.txt"
data <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
shortdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalactivepower <- as.numeric(shortdata$Global_active_power)
png("plot.png", width=480, height=480)
hist(globalactivepower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
