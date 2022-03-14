## Load the data 
```{r}
source <- "household_power_consumption.txt"
data <- read.table(source, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
Feb07data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
```

## plot4
```{r}
activepower <- as.numeric(Feb07data$Global_active_power)
reactivepower <- as.numeric(Feb07data$Global_reactive_power)
voltage <- as.numeric(Feb07data$Voltage)
submeter1 <- as.numeric(Feb07data$Sub_metering_1)
submeter2 <- as.numeric(Feb07data$Sub_metering_2)
submeter3 <- as.numeric(Feb07data$Sub_metering_3)

png("plot4.png", width=960, height=960)
par(mfrow = c(2, 2)) 

##4.1
plot(date_time, activepower, type="l", xlab="", ylab="Global Active Power", cex=0.2)

## 4.2
plot(date_time, voltage, type="l", xlab="date_time", ylab="Voltage")

## 4.3
plot(date_time, submeter1, type="l", ylab="Energy submeter", xlab="")
lines(date_time, submeter2, type="l", col="red")
lines(date_time, submeter3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

## 4.4
plot(date_time, reactivepower, type="l", xlab="date_time", ylab="Global_reactive_power")

dev.off()
```
