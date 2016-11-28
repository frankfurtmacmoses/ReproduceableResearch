med.data <- read.csv("assignmet.csv")
View(med.data)
NY <- med.data[grep("NY",med.data$Provider.State),]
NY <- mutate(NY,Average.Total.Payments =log(Average.Total.Payments),Average.Covered.Charges = log(Average.Covered.Charges))
chat_file_NY <- ggplot(NY,aes(Average.Total.Payments,Average.Covered.Charges))
pdf("plot1.pdf")
chat_file_NY + geom_smooth(method = "lm") + geom_point() + ggtitle("Correlation Between Average.Covered.Charges and Average.Total.Payments")
dev.off()
