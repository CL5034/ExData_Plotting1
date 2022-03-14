## Load the data 
```{r}
source <- "household_power_consumption.txt"
data <- read.table(source, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
Feb07data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
```

## Plot1
```{r}
activepower <- as.numeric(Feb07data$Global_active_power)
png("plot1.png")
hist(activepower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
```
