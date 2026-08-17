#Különböző mérőhelyek együtt (2 percesek)
#Órás hőmérséklet
par(xaxs = "i", yaxs = "i", mar = c(5.1, 4.1, 4.1, 4.1))
xhatar <- as.POSIXct(c("2021-02-01", "2025-12-31"))
plot.zoo (HAZ2orashom.xts,
          main="Cumulative hourly temperature data",
          xlab="Years",
          xlim = c(xhatar[1],xhatar[2]),
          ylab=" Temperature [°C]",
          ylim = c(-10,30),
          col="darkred")
lines (as.zoo (ESZEGELY2orashom.xts), col="red2")
lines (as.zoo (EGER2orashom.xts), col="tomato")
#Órás pára
par(xaxs = "i", yaxs = "i", mar = c(5.1, 4.1, 4.1, 4.1))
xhatar <- as.POSIXct(c("2021-02-01", "2025-12-31"))
plot.zoo (HAZ2oraspara.xts,
          main="Cumulative hourly humidity data",
          xlab="Years",
          xlim = c(xhatar[1],xhatar[2]),
          ylab="Humidity [%]",
          ylim = c(30,105),
          col="purple4")
lines (as.zoo (ESZEGELY2oraspara.xts), col="maroon4")
lines (as.zoo (EGER2oraspara.xts), col="deeppink1")
#Napi hőmérséklet
par(xaxs = "i", yaxs = "i", mar = c(5.1, 4.1, 4.1, 4.1))
xhatar <- as.POSIXct(c("2021-02-01", "2025-12-31"))
plot.zoo (HAZ2napi.xts [,1],
          main="Cumulative daily temperature data",
          xlab="Years",
          xlim = c(xhatar[1],xhatar[2]),
          ylab="Temperature [°C]",
          ylim = c(-10,30),
          col="darkred",
          lwd=1.8)
lines (as.zoo (ESZEGELY2napi.xts [,1]), col="red2", lwd=1.8)
lines (as.zoo (EGER2napi.xts [,1]), col="tomato", lwd=1.8)
#Napi pára
par(xaxs = "i", yaxs = "i", mar = c(5.1, 4.1, 4.1, 4.1))
xhatar <- as.POSIXct(c("2021-02-01", "2025-12-31"))
plot.zoo (HAZ2napi.xts [,2],
          main="Cumulative daily humidity data",
          xlab="Years",
          xlim = c(xhatar[1],xhatar[2]),
          ylab="%",
          ylim = c(30,105),
          col="purple4",
          lwd=1.8)
lines (as.zoo (ESZEGELY2napi.xts [,2]), col="maroon4", lwd=1.8)
lines (as.zoo (EGER2napi.xts [,2]), col="deeppink1", lwd=1.8)
#Havi hőmérséklet
par(xaxs = "i", yaxs = "i", mar = c(5.1, 4.1, 4.1, 4.1))
xhatar <- as.POSIXct(c("2021-02-01", "2025-12-31"))
plot.zoo (HAZ2havi.xts [,1],
          main="Cumulative monthly temperature data",
          xlab="Years",
          xlim = c(xhatar[1],xhatar[2]),
          ylab="Temperature [°C]",
          ylim = c(-1,30),
          col="darkred",
          lwd=2.5)
lines (as.zoo (ESZEGELY2havi.xts [,1]), col="red2", lwd=2.5)
lines (as.zoo (EGER2havi.xts [,1]), col="tomato", lwd=2.5)
#Havi pára
par(xaxs = "i", yaxs = "i", mar = c(5.1, 4.1, 4.1, 4.1))
xhatar <- as.POSIXct(c("2021-02-01", "2025-12-31"))
plot.zoo (HAZ2havi.xts [,2],
          main="Cumulative monthly humidity data",
          xlab="Years",
          xlim = c(xhatar[1],xhatar[2]),
          ylab="Humidity [%]",
          ylim= c(55, 100),
          col="purple4",
          lwd=2.5)
lines (as.zoo(ESZEGELY2havi.xts [,2]), col="maroon4", lwd=2.5)
lines (as.zoo(EGER2havi.xts [,2]), col="deeppink1", lwd=2.5)