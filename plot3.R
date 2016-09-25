#####funciton for plot 3
a=read.csv("household_power_consumption.csv",header=TRUE,sep=";")
b=a[a$Date%in%c("1/2/2007","2/2/2007"),]
##file reading
x=paste(b$Date,b$Time,sep="")
d=strptime(x,"%d/%m/%Y %H:%M:%S")
sub1=as.numeric(b$Sub_metering_1)
sub2=as.numeric(b$Sub_metering_2)
sub3=as.numeric(b$Sub_metering_3)
## generate x and y values
png("plot3.png", width=480, height=480)
plot(d,sub1, type="l", xlab="", ylab="Energy Submetering")
lines(d,sub2,type="l",col="red")
lines(d,sub3,type="l", col="blue")
legend("topright",c("Sub_meeting_1","Sub_meeting_2","Sub_meeting_3"), lty=1, lwd=2.5, col=c("black","red","blue"))
dev.off()
## generate plot
