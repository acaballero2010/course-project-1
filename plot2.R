# Getting the dataset
data <- read.table("C:/Users/Miah Alexa/Coursera/Course Project 1/household_power_consumption.txt", sep=";", na.strings="?", header = TRUE)

data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

# Getting the data needed for the project
data_project <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
View(data_project)

# Coverting Date and Time
datetime <- paste(as.Date(data_project$Date), data_project$Time)
data_project$Datetime <- as.POSIXct(datetime)

# Plot 2
plot(data_project$Global_active_power~data_project$Datetime, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
?plot
