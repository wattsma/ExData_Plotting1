data<-read.csv.sql("household_power_consumption.txt", sql="select * from file where Date in ('1/2/2007','2/2/2007')", sep=";")
DateTime<-paste(as.Date(data$Date,"%d/%m/%Y"), data$Time, sep=" ")
data$DateTime<-strptime(DateTime, "%Y-%m-%d %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(data$DateTime,data$Global_active_power,ylab="Global Active Power (kilowatts)", xlab="", type="l")
dev.off()