names(my_file)

exc.data <-
        my_file[, c("EVTYPE",
                    "FATALITIES",
                    "INJURIES",
                    "PROPDMG",
                    "PROPDMGEXP",
                    "CROPDMG",
                    "CROPDMGEXP")]
unique(exc.data$PROPDMGEXP)

unique(exc.data$CROPDMGEXP)
