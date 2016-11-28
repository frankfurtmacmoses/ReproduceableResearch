
med.data<- mutate(med.data,Average.Total.Payments =log(Average.Total.Payments),Average.Covered.Charges = log(Average.Covered.Charges))

chat_file_all_state <- ggplot(med.data,aes(Average.Total.Payments,Average.Covered.Charges))
pdf("plot2.pdf",
chat_file_all_state + geom_smooth(method = "lm") + geom_point() + facet_wrap(DRG.Definition~Provider.State) + ggtitle("relationship between mean covered charges & mean total payments  vary by medical condition & Provider.State"))
dev.off()
