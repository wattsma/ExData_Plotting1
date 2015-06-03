data<-read.csv.sql("household_power_consumption.txt", sql="select * from file where Date in ('1/2/2007','2/2/2007')", sep=";")
png("plot1.png", width=480, height=480)
hist(data$Global_active_power, xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")
dev.off()