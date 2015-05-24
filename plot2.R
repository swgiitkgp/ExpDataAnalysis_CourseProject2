plot2 <- function()
{
  NEI <- readRDS("summarySCC_PM25.rds")
  
  Baltimore <- subset(NEI, fips == "24510")
  aggregate <- aggregate(Emissions~year, Baltimore, sum)
  
  png("plot2.png", width=480, height=480)
  barplot(aggregate$Emissions, names.arg=aggregate$year, col = "red", main = "Total PM2.5 Emmisions in Baltimore", xlab="Year", ylab="PM2.5 Emmisions")
  dev.off()
  
}