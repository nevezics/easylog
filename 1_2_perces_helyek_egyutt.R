## 1 és 2 perces adatsorok összehasonlítása

library (xts)

## Ház előtti műszerek összehasonlítása
plot.zoo (HAZ1napi.xts [,1], col=2)
lines (as.zoo(HAZ2napi.xts [,1]), col=1)
#HAZ1&HAZ2 vizualizáció együtt
#Órás hőmérséklet
plot.zoo (HAZ1orashom.xts,
      main="Open field hourly temperature data",
      xlab="Years",
      ylab="°C",
      col="red4")
lines (as.zoo (HAZ2orashom.xts), col="tomato")
legend(x = "bottomright",
       legend = c("1-minute", "2-minute"), 
       col = c("red4", "tomato"),
       lty = c(1, 1))
#Órás pára
plot.zoo (HAZ1oraspara.xts,
      main="Open field hourly humidity data",
      xlab="Years",
      ylab="%",
      col="blue")
lines (as.zoo (HAZ2oraspara.xts), col="cyan")
#Napi hőmérséklet
plot.zoo (HAZ1napi.xts [,1],
      main="Open field daily temperature data",
      xlab="Years",
      ylab="°C",
      col="red4",
      lwd=1.8)
lines (as.zoo (HAZ2napi.xts [,1]), col="tomato", lwd=1.8)
#Napi pára
plot.zoo (HAZ1napi.xts [,2],
      main="Open field daily humidity data",
      xlab="Years",
      ylab="%",
      col="blue",
      lwd=1.8)
lines (as.zoo (HAZ2napi.xts [,2]), col="cyan", lwd=1.8)
#Havi hőmérséklet
plot.zoo (HAZ1havi.xts [,1],
      main="Open field monthly temperature data",
      xlab="Years",
      ylab="°C",
      col="red4",
      lwd=2.5)
lines (as.zoo (HAZ2havi.xts [,1]), col="tomato", lwd=2.5)
#Havi pára
plot.zoo (HAZ1havi.xts [,2],
      main="Open field monthly humidity data",
      xlab="Years",
      ylab="%",
      col="blue",
      lwd=2.5)
lines (as.zoo(HAZ2havi.xts [,2]), col="cyan", lwd=2.5)

## Égeres állományban lévő műszerek összehasonlítása
plot.zoo(EGER1napi.xts [,1], col=2)
lines (as.zoo(EGER2napi.xts [,1]), col=1)
#EGER1&EGER2 vizualizáció együtt
#Órás hőmérséklet
plot.zoo (EGER1orashom.xts,
          main="Alder forest hourly temperature data",
          xlab="Years",
          ylab="°C",
          col="red4")
lines (as.zoo (EGER2orashom.xts), col="tomato")
legend(x = "bottomright",
       legend = c("1-minute", "2-minute"), 
       col = c("red4", "tomato"),
       lty = c(1, 1))
#Órás pára
plot.zoo (EGER1oraspara.xts,
      main="Alder forest hourly humidity data",
      xlab="Years",
      ylab="%",
      col="blue")
lines (as.zoo(EGER2oraspara.xts), col="cyan")
#Napi hőmérséklet
plot.zoo (EGER1napi.xts [,1],
      main="Alder forest daily temperature data",
      xlab="Years",
      ylab="°C",
      col="red4",
      lwd=1.8)
lines (as.zoo (EGER2napi.xts [,1]), col="tomato",lwd=1.8)
#Napi pára
plot.zoo (EGER1napi.xts [,2],
      main="Alder forest daily humidity data",
      xlab="Years",
      ylab="%",
      col="blue",
      lwd=1.8)
lines (as.zoo(EGER2napi.xts [,2]), col="cyan", lwd=1.8)
#Havi hőmérséklet
plot.zoo (EGER1havi.xts [,1],
      main="Alder forest monthly temperature data",
      xlab="Years",
      ylab="°C",
      col="red4",
      lwd=2.5)
lines (as.zoo (EGER2havi.xts [,1]), col="tomato", lwd=2.5)
#Havi pára
plot.zoo (EGER1havi.xts [,2],
      main="Alder forest monthly humidity data",
      xlab="Years",
      ylab="%",
      col="blue",
      lwd=2.5)
lines (as.zoo (EGER2havi.xts [,2]), col="cyan", lwd=2.5)

#ESZEGELY1&ESZEGELY2 vizualizáció együtt
#Órás hőmérséklet
plot.zoo (ESZEGELY1orashom.xts,
          main="Forest edge hourly temperature data",
          xlab="Years",
          ylab="°C",
          col="red4")
lines (as.zoo (ESZEGELY2orashom.xts), col="tomato")
legend(x = "bottomright",
       legend = c("1-minute", "2-minute"), 
       col = c("red4", "tomato"),
       lty = c(1, 1))
#Órás pára
plot.zoo (ESZEGELY1oraspara.xts,
          main="Forest edge hourly humidity data",
          xlab="Years",
          ylab="%",
          col="blue")
lines (as.zoo(ESZEGELY2oraspara.xts), col="cyan")
#Napi hőmérséklet
plot.zoo (ESZEGELY1napi.xts [,1],
          main="Forest edge daily temperature data",
          xlab="Years",
          ylab="°C",
          col="red4",
          lwd=1.8)
lines (as.zoo (ESZEGELY2napi.xts [,1]), col="tomato",lwd=1.8)
#Napi pára
plot.zoo (ESZEGELY1napi.xts [,2],
          main="Forest edge daily humidity data",
          xlab="Years",
          ylab="%",
          col="blue",
          lwd=1.8)
lines (as.zoo(ESZEGELY2napi.xts [,2]), col="cyan", lwd=1.8)
#Havi hőmérséklet
plot.zoo (ESZEGELY1havi.xts [,1],
          main="Forest edge monthly temperature data",
          xlab="Years",
          ylab="°C",
          col="red4",
          lwd=2.5)
lines (as.zoo (ESZEGELY2havi.xts [,1]), col="tomato", lwd=2.5)
#Havi pára
plot.zoo (ESZEGELY1havi.xts [,2],
          main="Forest edge monthly humidity data",
          xlab="Years",
          ylab="%",
          col="blue",
          lwd=2.5)
lines (as.zoo (ESZEGELY2havi.xts [,2]), col="cyan", lwd=2.5)
