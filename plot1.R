
## Load the data from table and remove the dataset with missing values
power_data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", 
                         colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

## Convert the Date and Time variables to Date/Time classes 
power_data$Date <- as.Date(power_data$Date, "%d/%m/%Y")

## Subset data between 2007-02-01 and 2007-02-02
power_data <- subset(power_data,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

## Create the histogram and save it in png file
png("plot1.png", width=480, height=480)
hist(power_data$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")
dev.off()