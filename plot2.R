
#####function for plot 2
a=read.csv("household_power_consumption.csv",header=TRUE,sep=";")
b=a[a$Date%in%c("1/2/2007","2/2/2007"),]
##file reading
x=paste(b$Date,b$Time,sep="")
d=strptime(x,"%d/%m/%Y %H:%M:%S")
c=as.numeric(b$Global_active_power)
## generate x and y values
png("plot2.png", width=480, height=480)
plot(d,c, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
## generate plot
