#Csapadékadatok hozzáadása
#Havi csapadék Hellmann alapján
library (readxl)
monthlyprec <- read_excel("Hellmann rain gauge_HVV.xlsx", sheet = "Hellmann rain gauge_HVV")
monthlyprec$`precipitation` <- as.numeric(sub(",", ".", monthlyprec$`precipitation`, fixed = TRUE))
monthlyprec.xts <- xts(monthlyprec$precipitation, monthlyprec$date)
#Vizualizáció
#Havi hőmérséklet és csapadék
par(xaxs = "i", yaxs = "i", mar = c(5.1, 4.1, 4.1, 4.1))
xhatar <- as.POSIXct(c("2021-01-01", "2026-01-01"))
plot.zoo (HAZ2havi.xts [,1],
          main="Cumulative monthly precipitation and temperature data",
          xlab="Years",
          xlim = c(xhatar[1],xhatar[2]),
          ylab="Temperature [°C]",
          ylim = c(-1,30),
          col="darkred",
          lwd=2.5,)
lines (as.zoo (ESZEGELY2havi.xts [,1]), col="red2", lwd=2.5)
lines (as.zoo (EGER2havi.xts [,1]), col="tomato", lwd=2.5)
par( new = TRUE, mar = c(5.1, 4.1, 4.1, 4.1))
plot.zoo (monthlyprec.xts,
          type = "h",
          xlim = c(xhatar[1],xhatar[2]),
          xaxt = "n",
          xlab = "",
          yaxt = "n",
          ylab = "",
          ylim = c(310,0),
          col = "steelblue",
          lwd = 4,
          lend = "butt")
axis(4)
mtext("Precipitation [mm]", side = 4, line = 2.5)
leg.txt <- c ("Precipitation","Open field","Forest edge", "Forest")
legend("bottomright", leg.txt, pch = 16, col = c("steelblue", "darkred","red2","tomato"),
       cex = 0.3, trace = TRUE)
#Havi pára és csapadék
par(xaxs = "i", yaxs = "i", mar = c(5.1, 4.1, 4.1, 4.1))
xhatar <- as.POSIXct(c("2021-01-01", "2026-01-01"))
plot.zoo (HAZ2havi.xts [,2],
          main="Cumulative monthly precipitation and humidity data",
          xlab="Years",
          xlim = c(xhatar[1],xhatar[2]),
          ylab="Humidity [%]",
          ylim= c(55, 100),
          col="purple4",
          lwd=2.5)
lines (as.zoo(ESZEGELY2havi.xts [,2]), col="maroon4", lwd=2.5)
lines (as.zoo(EGER2havi.xts [,2]), col="deeppink1", lwd=2.5)
par( new = TRUE, mar = c(5.1, 4.1, 4.1, 4.1))
plot.zoo (monthlyprec.xts,
          type = "h",
          xlim = c(xhatar[1],xhatar[2]),
          xaxt = "n",
          xlab = "",
          yaxt = "n",
          ylab = "",
          ylim = c(310,0),
          col = "steelblue",
          lwd = 4,
          lend = "butt")
axis(4)
mtext("Precipitation [mm]", side = 4, line = 2.5)