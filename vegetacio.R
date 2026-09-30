#Különböző mérőhelyek együtt (2 percesek) - vegetációs időszakban
#Órás hőmérséklet
Sys.setlocale(locale = "C")
par(xaxs = "i", yaxs = "i", mar = c(5.1, 4.1, 4.1, 4.1))
xhatar <- as.POSIXct(c("2025-06-01", "2025-09-30"))
plot.zoo (HAZ2orashom.xts,
          main="Cumulative hourly temperature data - vegetation period 2025",
          xlab="Months", xlim = c(xhatar[1],xhatar[2]),
          ylab=" Temperature [°C]",ylim = c(5,30),
          cex.axis=1,cex.lab=1, cex.main=1,
          font.axis=2, font.lab=2, font.main=2,
          col="darkred")
lines (as.zoo (ESZEGELY2orashom.xts), col="red2")
lines (as.zoo (EGER2orashom.xts), col="tomato")
leg.txt <- c ("Open field","Forest edge", "Forest")
legend("topright", inset=1/32,leg.txt, pch = 16, col = c("darkred","red2","tomato"),
       cex = 0.6, text.font=2, trace = TRUE)
#Órás pára
par(xaxs = "i", yaxs = "i", mar = c(5.1, 4.1, 4.1, 4.1))
xhatar <- as.POSIXct(c("2025-06-01", "2025-09-30"))
plot.zoo (HAZ2oraspara.xts,
          main="Cumulative hourly humidity data - vegetation period 2025",
          xlab="Months", xlim = c(xhatar[1],xhatar[2]),
          ylab="Humidity [%]", ylim = c(58,101),
          cex.axis=1,cex.lab=1, cex.main=1,
          font.axis=2, font.lab=2, font.main=2,
          col="purple4")
lines (as.zoo (ESZEGELY2oraspara.xts), col="maroon4")
lines (as.zoo (EGER2oraspara.xts), col="deeppink1")
leg.txt <- c ("Open field","Forest edge", "Forest")
legend("bottomright", inset=1/32,leg.txt, pch = 16, col = c("purple4","maroon4","deeppink1"),
       cex = 0.6, text.font=2, trace = TRUE)