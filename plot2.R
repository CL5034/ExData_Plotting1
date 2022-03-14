## Load the data 
```{r}
source <- "household_power_consumption.txt"
data <- read.table(source, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
Feb07data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
```

## plot2
```{r}
date_time <- strptime(paste(Feb07data$Date, Feb07data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
activepower <- as.numeric(Feb07data$Global_active_power)
png("plot2.png")
plot(date_time, activepower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
```
