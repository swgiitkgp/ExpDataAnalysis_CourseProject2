plot1 <- function()
{
  NEI <- readRDS("summarySCC_PM25.rds")
  #plot(NEI$year, NEI$Emissions, type = "l")
  aggregate <- aggregate(Emissions~year, NEI, sum)
  png("plot1.png", width=480, height=480)
  barplot(aggregate$Emissions, names.arg = aggregate$year, col = "red", main = "Total PM2.5 Emmisions from all Sources", xlab = "Year", ylab = "Total Emissions")
  dev.off()
}