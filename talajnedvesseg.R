#Talajnedvesség-adatok hozzáadása
#Havi talajnedvesség-adatok a FieldScout alapján
library (xts)
library (readxl)
monthlymoist <- read_excel("Fieldscout_SM_2021_2025.xlsx", sheet = "meadow")
monthlymoist$`forest` <- as.numeric(sub(",", ".", monthlymoist$`forest`, fixed = TRUE))
monthlymoist$`edge` <- as.numeric(sub(",", ".", monthlymoist$`edge`, fixed = TRUE))
monthlymoist$`meadow` <- as.numeric(sub(",", ".", monthlymoist$`meadow`, fixed = TRUE))
monthlymoistF.xts <- xts(monthlymoist$forest, monthlymoist$date)
monthlymoistE.xts <- xts(monthlymoist$edge, monthlymoist$date)
monthlymoistM.xts <- xts(monthlymoist$meadow, monthlymoist$date)
#Vizualizáció
#Havi hőmérséklet és csapadék
Sys.setlocale(locale = "C")
par(xaxs = "i", yaxs = "i", mar = c(5.1, 4.1, 4.1, 4.1))
xhatar <- as.POSIXct(c("2021-01-01", "2026-01-01"))
plot.zoo (monthlymoistF.xts,
          main="Cumulative monthly precipitation and soil moisture data",
          xlab="Years",xlim = c(xhatar[1],xhatar[2]),
          ylab="Soil moisture [%]",ylim = c(5,55),
          cex.axis=1,cex.lab=1, cex.main=1,
          font.axis=2, font.lab=2, font.main=2,
          col="darkgreen",
          lwd=2.5,pch="20",lty="solid")
lines (as.zoo (monthlymoistE.xts), col="olivedrab", lwd=2.5, pch= "20", lty="solid")
lines (as.zoo (monthlymoistM.xts), col="chartreuse", lwd=2.5, pch="20", lty="solid")
par( new = TRUE, mar = c(5.1, 4.1, 4.1, 4.1))
plot.zoo (monthlyprec.xts,type = "h",
          xlim = c(xhatar[1],xhatar[2]), xaxt = "n", xlab = "",
          yaxt = "n", ylab = "",ylim = c(310,0),
          cex.axis=1,cex.lab=1, cex.main=1,
          font.axis=2,font.lab=2, font.main=2,
          col = "steelblue",
          lwd = 4, lend = "butt")
axis(4, cex.axis=1, font.axis=2)
mtext("Precipitation [mm]", side = 4, line = 2.5, cex=1, font=2)
leg.txt <- c ("Precipitation","Forest","Forest edge", "Meadow")
legend("bottomright", inset=1/32,leg.txt, pch = 16, col = c("steelblue", "darkgreen","olivedrab","chartreuse"),
       cex = 0.6, text.font=2, trace = TRUE)