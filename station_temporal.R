require(openair)
require(lattice)
library(latticeExtra)
require(lubridate)

kc1_2020 <- importAURN(site = "kc1", year = 2020, meta = TRUE)


tiff("figure2.tiff", width = 8, height = 5, units = 'in', res = 300)

timePlot(selectByDate(kc1_2020, year = 2020),pollutant = c( "pm2.5"),
y.relation = "free", ylab=expression(paste("Measured hourly PM2.5 concentration (", mu, "g/",m^3,")")))


trellis.last.object() +layer(ltext(x = ymd_hms("2020-02-05 14:00:00"), y = 120,
              labels = "Year of 2020"), rows = 1)
dev.off()


tiff("figure3.tiff", width = 8, height = 6, units = 'in', res = 300)

calendarPlot(kc1_2020, year = 2020, pollutant = "pm2.5",ylab=expression(paste("Daily mean PM2.5 concentrations (  ", mu, "g/",m^3,")")), xlab="Year of 2020", key.position = "left")

dev.off()


tiff("figure4.tiff", width = 8, height = 5, units = 'in', res = 300)

timeVariation(pollutant="pm2.5", mydata = kc1_2020, ylab=expression(paste("PM2.5( ", mu, "g/",m^3,")")))
dev.off()


