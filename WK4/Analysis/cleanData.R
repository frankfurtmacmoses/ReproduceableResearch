cleaned.exc.data <-
        mutate(
                exc.data,
                PROPDMGEXP = ifelse(
                        PROPDMGEXP %in% c("b", "B"),
                        9,
                        ifelse(
                                PROPDMGEXP %in% c("", "+", "-", "?"),
                                0,
                                ifelse(PROPDMGEXP %in% c("m", "M"), 6,
                                       ifelse(PROPDMGEXP %in% c("k", "K"), 3, 2))
                        )
                ),
                
                CROPDMGEXP = ifelse(
                        CROPDMGEXP %in% c("", "0", "?"),
                        0,
                        ifelse(
                                CROPDMGEXP %in% c("h", "H"),
                                2,
                                ifelse(CROPDMGEXP %in% c("k", "K"), 2,
                                       ifelse(CROPDMGEXP %in% c("m", "M"), 6, 9))
                        )
                ),
                PROPDMGEXP_NO = PROPDMGEXP ^ 10,
                CROPDMGEXP_NO = CROPDMGEXP ^ 10
                
        ) %>%
        group_by(EVTYPE) %>%
        summarise(
                FATALITIES = sum(FATALITIES),
                INJURIES = sum(INJURIES),
                PROPDMGEXP_NO = sum(PROPDMGEXP_NO),
                CROPDMGEXP_NO = sum(CROPDMGEXP_NO)
        )

