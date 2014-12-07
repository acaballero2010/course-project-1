# Getting the dataset
data <- read.table("C:/Users/Miah Alexa/Coursera/Course Project 1/household_power_consumption.txt", sep=";", na.strings="?", header = TRUE)

data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

# Getting the data needed for the project
data_project <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
View(data_project)

# Coverting Date and Time
datetime <- paste(as.Date(data_project$Date), data_project$Time)
data_project$Datetime <- as.POSIXct(datetime)

# Coding Plot 4
par(mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))
with(data_project, {
  plot(Global_active_power~Datetime, type = "l", xlab = "",
       ylab = "Global Active Power (kilowatts)")
  plot(Voltage~Datetime, type = "l", xlab = "",
       ylab = "Global Active Power (kilowatts)")
  plot(Sub_metering_1~Datetime, type = "l", xlab = "",
       ylab = "Global Active Power (kilowatts)")
  lines(Sub_metering_2~Datetime, col = "Red")
  lines(Sub_metering_3~Datetime, col = "Blue")
  legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, bty = "n",
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Global_reactive_power~Datetime, type = "l", xlab = "",
       ylab = "Global Reactive Power (kilowatts)")
})


