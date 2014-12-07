# Loading the dataset
data <- read.table("C:/Users/Miah Alexa/Coursera/Course Project 1/household_power_consumption.txt", sep=";", na.strings="?", header = TRUE)
View(data)

# Convert data to date using as.Date function
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

# Getting the required subset for the project
data.project <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
View(data.project)

# Coverting date and time
datetime <- paste(as.Date(data.project$Date), data.project$Time)
data.project$Datetime <- as.POSIXct(datetime)

# Plotting first graph
hist(data.project$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")


