# read RDS files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#total emissions in 1999, 2002, 2005, 2008
totalEmi = aggregate(Emissions ~ year, data=NEI, sum)

# plot
png(filename="plot1.png", width=480, height=480, units="px")
plot(totalEmi$Emissions, type="b", 
     xaxt="n",  xlab="Year",
     ylab=expression(PM[2.5]~Emissions~(`in`~tons)), 
     main=expression(Total~PM[2.5]~Emissions~`in`~United~States))
axis(1, at=c(1:4), labels=c("1999", "2002", "2005", "2008"))
dev.off()