## Creating economic data_frame
economic_data <- mutate(cleaned.exc.data,econ_val = PROPDMGEXP_NO + CROPDMGEXP_NO) %>%
        select(EVTYPE,econ_val) %>%
        arrange(desc(econ_val))



## creating health data_frame
health_data <-
        
        mutate(cleaned.exc.data,health_val = INJURIES + FATALITIES) %>%
        select(EVTYPE, health_val) %>%
        arrange(desc(health_val))

