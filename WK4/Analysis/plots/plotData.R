#


ggplot(econ.plot.data,aes(EVTYPE,econ_val)) + geom_bar(stat = "identity") + coord_flip()
xlab("Event type") + ylab("Crop damage in dollars")



ggplot(health.plot.data,aes(EVTYPE,health_val)) + geom_bar(stat = "identity") + coord_flip() + 
        xlab("Event type") + ylab("Health damage in dollars") 

        
