placename  <- "EGER1"
placename  <- "EGER2"
placename  <- "HAZ1"
placename  <- "HAZ2"
placename <- "ESZEGELY1"
placename <- "ESZEGELY2"
Placename <- "BUKKOS1"
placename <- "BUKKOS2"
placename <- "KTT1"
placename <- "KTT2"

filename <- dir("../hom_para_NCS", placename)
assign(placename, read.csv(paste0("../hom_para_NCS/", filename[1]), skip = 1, head = FALSE))
for(aktfile in filename[-1]) {
    assign(placename, rbind(get(placename), read.csv(paste0("../hom_para_NCS/", aktfile), skip = 1, head = FALSE)))
}

library(xts)
ttime <- as.POSIXct(EGER1[,2])
EGER1.xts <- xts(EGER1[,3:5], ttime)
ttime <- as.POSIXct(EGER2[,2])
EGER2.xts <- xts(EGER2[,3:5], ttime)

## Együtt
plot.zoo(EGER1.xts[,1])
lines(as.zoo(EGER2.xts[,1]), col = 2)

ttime <- as.POSIXct(HAZ1[,2])
HAZ1.xts <- xts(HAZ1[,3:5], ttime)
ttime <- as.POSIXct(HAZ2[,2])
HAZ2.xts <- xts(HAZ2[,3:5], ttime)

ttime <- as.POSIXct(ESZEGELY2[,2])
ESZEGELY2.xts <- xts(ESZEGELY2[,3:5], ttime)


lines(as.zoo(HAZ1.xts[,1]), col = 3)
lines(as.zoo(HAZ2.xts[,1]), col = 4)

plot.zoo(EGER1.xts[,2])
lines(as.zoo(EGER2.xts[,2]), col = 2)
lines(as.zoo(HAZ1.xts[,2]), col = 3)
lines(as.zoo(HAZ2.xts[,2]), col = 4)

## MÉrőhelyenként
EGER.xts <- (EGER1.xts, EGER2.xts)
plot.zoo(EGER.xts[,1])

write.zoo(EGER1.xts, "EGER1.csv")

head(EGER1.xts[1] - EGER2.xts[1])

EGER1napi.xts <- apply.daily(EGER1.xts, mean)

EGER2napi.xts <- apply.daily(EGER2.xts, mean)
HAZ2napi.xts <- apply.daily(HAZ2.xts, mean)
plot(HAZ2napi.xts[,1]-EGER2napi.xts[,1])

summary(ESZEGELY2.xts)
ESZEGELY2napi.xts <- apply.daily(ESZEGELY2.xts, mean)
plot(ESZEGELY2napi.xts[,1]-EGER2napi.xts["2021-06-25/",1])
plot(EGER2napi.xts)
plot(ESZEGELY2napi.xts)
plot(EGER2napi.xts[,2]-ESZEGELY2napi.xts[,2])
plot(HAZ2napi.xts)
plot(EGER2napi.xts[,1]-HAZ2napi.xts[,1])



plot.zoo(EGER2.xts[,2])

## Higher resolution in time? Cross-correlation?
plot(ESZEGELY2.xts['2021-07-01/2021-07-10',1] - EGER2.xts['2021-07-01/2021-07-10',1])

timewin <- '2021-07-01/2021-07-10'
jpeg("TempCompare.jpg", width = 9.5, height = 9, units = "cm", res = 300, pointsize = 10)
plot(cbind(HAZ2.xts[timewin,1], ESZEGELY2.xts[timewin,1],EGER2.xts[timewin,1]), main = "")
addLegend("topleft", on=1, legend.names = c("Szabad terület", "Szegély", "Állomány"), col = 1:3, lwd = 2)
dev.off()

jpeg("HumidCompare.jpg", width = 9.5, height = 9, units = "cm", res = 300, pointsize = 10)
plot(cbind(HAZ2.xts[timewin,2], ESZEGELY2.xts[timewin,2],EGER2.xts[timewin,2]), main = "", ylim = c(35,109))
addLegend("topleft", on=1, legend.names = c("Szabad terület", "Szegély", "Állomány"), col = 1:3, lwd = 2)
dev.off()

