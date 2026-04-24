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
plot (HAZ1oraspara.xts,
      main="Open field hourly humidity data",
      ylab="%",
      col="cyan")
lines (HAZ2oraspara.xts, col="blue")
#Napi hőmérséklet
plot (HAZ1napi.xts [,1],
      main="Open field daily temperature data",
      ylab="°C",
      col="red")
lines (HAZ2napi.xts [,1], col="red4")
#Napi pára
plot (HAZ1napi.xts [,2],
      main="Open field daily humidity data",
      ylab="%",
      col="cyan")
lines (HAZ2napi.xts [,2], col="blue")
#Havi hőmérséklet
plot (HAZ1havi.xts [,1],
      main="Open field monthly temperature data",
      ylab="°C",
      col="red")
lines (HAZ2havi.xts [,1], col="red4")
#Havi pára
plot (HAZ1havi.xts [,2],
      main="Open field monthly humidity data",
      ylab="%",
      col="cyan")
lines (HAZ2havi.xts [,2], col="blue")

## Égeres állományban lévő műszerek összehasonlítása
plot.zoo(EGER1napi.xts [,1], col=2)
lines (as.zoo(EGER2napi.xts [,1]), col=1)
