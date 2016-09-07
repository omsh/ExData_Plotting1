library(dplyr)
library(lubridate)

hh <- read.table("household_power_consumption.txt", 
                 sep = ";", header = TRUE, na.strings = "?")

hhtbl <- tbl_df(hh)

# add a column for date time stamp

hhtbl <- mutate(hhtbl, date_time = dmy_hms(
    paste(as.character(hhtbl$Date), 
          as.character(hhtbl$Time))))

# convert the date column to Date object using as.Date

hhtbl <- mutate(hhtbl, Date = as.Date(dmy(hhtbl$Date)))

begin <- as.Date("2007-02-01")
end <- as.Date("2007-02-02")

# subset the data based on the given dates

subhh <- filter(hhtbl, Date == begin | Date == end)
