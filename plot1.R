url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
dir <- "C:/Users/Arun/Documents/Exploratory Data Analysis/data.zip"

data <- download.file(url,dir)
unzip("C:/Users/Arun/Documents/Exploratory Data Analysis/data.zip")
data <- "C:/Users/Arun/Documents/Exploratory Data Analysis/household_power_consumption.txt"
#load the data
datatable <- read.csv(data,header=T, sep=';', na.strings="?", 
                     nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data1 <- subset(datatable, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
hist(data1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
#save the png
png("plot1.png", width=480, height=480)
dev.off()