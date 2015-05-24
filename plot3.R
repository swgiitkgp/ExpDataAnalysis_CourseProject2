plot3 <- function()
{
  NEI <- readRDS("summarySCC_PM25.rds")
  Baltimore <- subset(NEI, fips == "24510")
  agg <- aggregate(Emissions~year + type, Baltimore, sum)
  g <- ggplot(agg, aes(year, Emissions)) +geom_point() + 
    facet_grid(.~type) + geom_smooth(method = "lm")+
    xlab("Year") + ylab("Total PM2.5 Emissions")+
    ggtitle("Total PM2.5 Emissions in Baltimore City from 1999 to 2008")
  
  png("plot3.png", width=1600, height=900)
  print(g)
  dev.off()
}