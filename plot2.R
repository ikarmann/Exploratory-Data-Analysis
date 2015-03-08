hpc <- read.csv("household_power_consumption.csv", sep = ";", na.strings = "?")
hpc <- hpc[hpc$Date == "1/2/2007" | hpc$Date == "2/2/2007",]
timedate <- strptime(paste(as.character(hpc$Date), as.character(hpc$Time)), format = "%d/%m/%Y %H:%M")
png(file = "plot2.png")
plot(timedate, hpc$Global_active_power, type = "n", xlab = "", ylab = "Global Active Power")
lines(timedate, hpc$Global_active_power)
dev.off()
