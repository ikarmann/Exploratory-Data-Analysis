hpc <- read.csv("household_power_consumption.csv", sep = ";", na.strings = "?")
hpc <- hpc[hpc$Date == "1/2/2007" | hpc$Date == "2/2/2007",]
png(file = "plot1.png")
hist(hpc$Global_active_power, xlab = "Global Active Power(killowatts)", main = "Global Active Power", col = "red")
dev.off()