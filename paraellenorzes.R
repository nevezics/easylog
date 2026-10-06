#Páratartalom ellenőrzése (1 és 2 perces helyek)
#Összes pára
Sys.setlocale(locale = "C")
par(xaxs = "i", yaxs = "i", mar = c(5.1, 4.1, 4.1, 4.1))
xhatar <- as.POSIXct(c("2021-04-01", "2025-09-30"))
plot.zoo (HAZ1.xts [,2],
          main="Raw humidity data - vegetation period 2021",
          xlab="Months",
          xlim = c(xhatar[1],xhatar[2]),
          ylab="Humidity [%]",
          ylim = c(30,105),
          col="darkcyan")
lines (as.zoo (HAZ2.xts[,2]), col="darkviolet")
lines (as.zoo(ESZEGELY1.xts [,2]),col="orange")
lines (as.zoo (ESZEGELY2.xts[,2]), col="yellow")
lines (as.zoo(EGER1.xts [,2]), col="lawngreen")
lines (as.zoo (EGER2.xts [,2]), col="firebrick1")
leg.txt <- c ("HAZ1","HAZ2", "SZEGELY1","SZEGELY2","EGER1", "EGER2")
legend("bottomright", inset=1/32,leg.txt, pch = 16, 
       col = c("darkcyan","darkviolet","orange", "yellow","lawngreen", "firebrick1"),
       cex = 0.6, text.font=2, trace = TRUE)
#Órás pára - szabadtér
par(xaxs = "i", yaxs = "i", mar = c(5.1, 4.1, 4.1, 4.1))
xhatar <- as.POSIXct(c("2021-02-01", "2025-12-31"))
plot.zoo (HAZ1oraspara.xts,
          main="Cumulative hourly humidity data - Open field",
          xlab="Months",
          xlim = c(xhatar[1],xhatar[2]),
          ylab="Humidity [%]",
          ylim = c(30,105),
          col="darkcyan")
lines (as.zoo (HAZ2oraspara.xts), col="darkviolet")
leg.txt <- c ("HAZ1","HAZ2")
legend("bottomright", inset=1/32,leg.txt, pch = 16, 
       col = c("darkcyan","darkviolet"),
       cex = 0.6, text.font=2, trace = TRUE)
#Órás pára - erdőszegély
par(xaxs = "i", yaxs = "i", mar = c(5.1, 4.1, 4.1, 4.1))
xhatar <- as.POSIXct(c("2021-02-01", "2025-12-31"))
plot.zoo (ESZEGELY1oraspara.xts,
          main="Cumulative hourly humidity data - Forest edge",
          xlab="Months",
          xlim = c(xhatar[1],xhatar[2]),
          ylab="Humidity [%]",
          ylim = c(30,105),
          col="orange")
lines (as.zoo (ESZEGELY2oraspara.xts), col="gold")
leg.txt <- c ("SZEGELY1","SZEGELY2")
legend("bottomright", inset=1/32,leg.txt, pch = 16, 
       col = c("orange","gold"),
       cex = 0.6, text.font=2, trace = TRUE)
#Órás pára - égeres állomány
par(xaxs = "i", yaxs = "i", mar = c(5.1, 4.1, 4.1, 4.1))
xhatar <- as.POSIXct(c("2021-02-01", "2025-12-31"))
plot.zoo (EGER1oraspara.xts,
          main="Cumulative hourly humidity data - Alder forest",
          xlab="Months",
          xlim = c(xhatar[1],xhatar[2]),
          ylab="Humidity [%]",
          ylim = c(30,105),
          col="lawngreen")
lines (as.zoo (EGER2oraspara.xts), col="firebrick1")
leg.txt <- c ("EGER1","EGER2")
legend("bottomright", inset=1/32,leg.txt, pch = 16, 
       col = c("lawngreen","firebrick1"),
       cex = 0.6, text.font=2, trace = TRUE)
#Órás pára - erdő és szegély együtt
Sys.setlocale(locale = "C")
par(xaxs = "i", yaxs = "i", mar = c(5.1, 4.1, 4.1, 4.1))
xhatar <- as.POSIXct(c("2025-04-01", "2025-09-30"))
plot.zoo (ESZEGELY1oraspara.xts,
          main="Cumulative hourly humidity data - vegetation period 2025",
          xlab="Months",
          xlim = c(xhatar[1],xhatar[2]),
          ylab="Humidity [%]",
          ylim = c(30,105),
          col="orange")
lines (as.zoo (ESZEGELY2oraspara.xts), col="gold")
lines (as.zoo(EGER1oraspara.xts), col="lawngreen")
lines (as.zoo (EGER2oraspara.xts), col="firebrick1")
leg.txt <- c ("SZEGELY1","SZEGELY2", "EGER1", "EGER2")
legend("bottomright", inset=1/32,leg.txt, pch = 16, 
       col = c("orange","gold", "lawngreen", "firebrick1"),
       cex = 0.6, text.font=2, trace = TRUE)
#Napi pára - erdő és szegély együtt
par(xaxs = "i", yaxs = "i", mar = c(5.1, 4.1, 4.1, 4.1))
xhatar <- as.POSIXct(c("2021-04-01", "2021-09-30"))
plot.zoo (ESZEGELY1napi.xts [,2],
          main="Cumulative daily humidity data - vegetation period 2021",
          xlab="Years",
          xlim = c(xhatar[1],xhatar[2]),
          ylab="Humidity [%]",
          ylim= c(30, 105),
          col="orange",
          lwd=2.5)
lines (as.zoo(ESZEGELY2napi.xts [,2]), col="gold", lwd=2.5)
lines (as.zoo(EGER1napi.xts [,2]), col="lawngreen", lwd=2.5)
lines (as.zoo(EGER2napi.xts [,2]), col="firebrick1", lwd=2.5)
leg.txt <- c ("SZEGELY1","SZEGELY2", "EGER1", "EGER2")
legend("bottomright", inset=1/32,leg.txt, pch = 16, 
       col = c("orange","gold", "lawngreen", "firebrick1"),
       cex = 0.6, text.font=2, trace = TRUE)