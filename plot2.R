## Napi plottok együtt
plot (HAZ2napi.xts[,1],col=2)
lines (EGER2napi.xts[,1],col=1)

## Teljes felbontás
plot (HAZ2.xts[,1],col=2)
lines (EGER2.xts[,1],col=1)

## havi szakasz
plot (HAZ2.xts['2021-06',1],col=2)
lines (EGER2.xts[,1],col=1)

## Heti idősor
plot (HAZ2.xts['2021-06-07/2021-06-14',1],col=2)
lines (EGER2.xts[,1],col=1)


plot (ESZEGELY1napi.xts [,1], col=2)
lines (ESZEGELY2napi.xts [,1], col=1)
plot (ESZEGELY2napi.xts [,1], col=2)

plot (BUKKOS2napi.xts [,1], col=2)
lines (ESZEGELY2napi.xts [,1], col=1)

## pdfbe
pdf("haz2eger2.pdf", width=21)
plot (HAZ2.xts['2021-06-07/2021-06-14',1],col=2, main ="HÁZ2 és ÉGER2")
lines (EGER2.xts[,1],col=1)
addLegend("topright", 
          legend.names=c("ÉGER2", "HÁZ2"),
          col= c(1,2),
          lty=c(1,1),
          lwd=c(2,2),
          ncol=2,
          bg="white",
          bty="o")
dev.off()

## pngbe
png("haz2eger2.png", width=3*480)
plot (HAZ2.xts['2021-06-07/2021-06-14',1],col=2)
lines (EGER2.xts[,1],col=1)
dev.off()

