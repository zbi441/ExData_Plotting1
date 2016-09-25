#####function for plot 4
a=read.csv("household_power_consumption.csv",header=TRUE,sep=";")
b=a[a$Date%in%c("1/2/2007","2/2/2007"),]
##file reading
x=paste(b$Date,b$Time,sep="")
d=strptime(x,"%d/%m/%Y %H:%M:%S")
c=as.numeric(b$Global_active_power)
e=as.numeric(b$Voltage)
f=as.numeric(b$Global_reactive_power)
sub1=as.numeric(b$Sub_metering_1)
sub2=as.numeric(b$Sub_metering_2)
sub3=as.numeric(b$Sub_metering_3)
## generate x and y values
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(d,c,type="l",xlab="",ylab="Global Active Power")
plot(d,c,type="l",xlab="datetime",ylab="Voltage")
plot(d,sub1, type="l", xlab="", ylab="Energy Submetering")
lines(d,sub2,type="l",col="red")
lines(d,sub3,type="l", col="blue")
legend("topright",c("Sub_meeting_1","Sub_meeting_2","Sub_meeting_3"), lty=1, lwd=2.5, col=c("black","red","blue"))
plot(d,f,type="l",xlab="datetime",ylab="Global_reactive_power")
dev.off()
