
##### function for plot 1
a=read.csv("household_power_consumption.csv",header=TRUE,sep=";")
b=a[a$Date%in%c("1/2/2007","2/2/2007"),]
c=as.numeric(b$Global_active_power)
png("plot1.png", width=480, height=480)
hist(c, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
