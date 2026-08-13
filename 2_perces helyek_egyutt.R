#Különböző mérőhelyek együtt (2 percesek)
#Órás hőmérséklet
plot.zoo (HAZ2orashom.xts,
          main="Cumulative hourly temperature data",
          xlab="Years",
          ylab="°C",
          col="darkred")
lines (as.zoo (ESZEGELY2orashom.xts), col="red2")
lines (as.zoo (EGER2orashom.xts), col="tomato")
#Órás pára
plot.zoo (HAZ2oraspara.xts,
          main="Cumulative hourly humidity data",
          xlab="Years",
          ylab="%",
          col="navyblue")
lines (as.zoo (ESZEGELY2oraspara.xts), col="blue2")
lines (as.zoo (EGER2oraspara.xts), col="cyan")
#Napi hőmérséklet
plot.zoo (HAZ2napi.xts [,1],
          main="Cumulative daily temperature data",
          xlab="Years",
          ylab="°C",
          col="darkred",
          lwd=1.8)
lines (as.zoo (ESZEGELY2napi.xts [,1]), col="red2", lwd=1.8)
lines (as.zoo (EGER2napi.xts [,1]), col="tomato", lwd=1.8)
#Napi pára
plot.zoo (HAZ2napi.xts [,2],
          main="Cumulative daily humidity data",
          xlab="Years",
          ylab="%",
          col="navyblue",
          lwd=1.8)
lines (as.zoo (ESZEGELY2napi.xts [,2]), col="blue2", lwd=1.8)
lines (as.zoo (EGER2napi.xts [,2]), col="cyan", lwd=1.8)
#Havi hőmérséklet
plot.zoo (HAZ2havi.xts [,1],
          main="Cumulative monthly temperature data",
          xlab="Years",
          ylab="°C",
          col="darkred",
          lwd=2.5)
lines (as.zoo (ESZEGELY2havi.xts [,1]), col="red2", lwd=2.5)
lines (as.zoo (EGER2havi.xts [,1]), col="tomato", lwd=2.5)
#Havi pára
plot.zoo (HAZ2havi.xts [,2],
          main="Cumulative monthly humidity data",
          xlab="Years",
          ylab="%",
          col="navyblue",
          lwd=2.5)
lines (as.zoo(ESZEGELY2havi.xts [,2]), col="blue2", lwd=2.5)
lines (as.zoo(EGER2havi.xts [,2]), col="cyan", lwd=2.5)