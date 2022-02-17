library(xts)

##Merohelyek
placename <- "HAZ1"
placename  <- "HAZ2"
placename  <- "EGER1"
placename  <- "EGER2"
placename <- "ESZEGELY1"
placename <- "ESZEGELY2"
placename <- "BUKKOS1"
placename <- "BUKKOS2"
placename <- "KTT1"
placename <- "KTT2"

##TXTBeolvasas
filename <- dir("../hom_para_NCS", placename)
assign(placename, read.csv(paste0("../hom_para_NCS/", filename[1]), skip = 1, head = FALSE))
for(aktfile in filename[-1]) {
  assign(placename, rbind(get(placename), read.csv(paste0("../hom_para_NCS/", aktfile), skip = 1, head = FALSE)))
}

##HAZ1(1perces; hom[,1]; para [,2])
ttime <- as.POSIXct(HAZ1[,2])
HAZ1.xts <- xts(HAZ1[,3:5], ttime)
HAZ1napi.xts <- apply.daily(HAZ1.xts, mean)
plot(HAZ1napi.xts)
plot (HAZ1napi.xts[,1])
plot (HAZ1napi.xts[,2])

##HAZ2(2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(HAZ2[,2])
HAZ2.xts <- xts(HAZ2[,3:5], ttime)
HAZ2napi.xts <- apply.daily(HAZ2.xts, mean)
plot(HAZ2napi.xts)
plot (HAZ2napi.xts[,1])
plot (HAZ2napi.xts[,2])

##EGER1 (1perces; hom[,1]; para[,2])
ttime <- as.POSIXct(EGER1[,2])
EGER1.xts <- xts(EGER1[,3:5], ttime)
EGER1napi.xts <- apply.daily(EGER1.xts, mean)
plot(EGER1napi.xts)
plot (EGER1napi.xts[,1])
plot (EGER1napi.xts[,2])

##EGER2 (2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(EGER2[,2])
EGER2.xts <- xts(EGER2[,3:5], ttime)
EGER2napi.xts <- apply.daily(EGER2.xts, mean)
plot(EGER2napi.xts)
plot (EGER2napi.xts[,1])
plot (EGER2napi.xts[,2])

##ESZEGELY1 (2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(ESZEGELY1[,2])
ESZEGELY1.xts <- xts(ESZEGELY1[,3:5], ttime)
ESZEGELY1napi.xts <- apply.daily(ESZEGELY1.xts, mean)
plot(ESZEGELY1napi.xts)
plot (ESZEGELY1napi.xts[,1])
plot (ESZEGELY1napi.xts[,2])

##ESZEGELY2 (2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(ESZEGELY2[,2])
ESZEGELY2.xts <- xts(ESZEGELY2[,3:5], ttime)
ESZEGELY2napi.xts <- apply.daily(ESZEGELY2.xts, mean)
plot(ESZEGELY2napi.xts)
plot (ESZEGELY2napi.xts[,1])
plot (ESZEGELY2napi.xts[,2])

##BUKKOs1 (2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(BUKKOS1[,2])
BUKKOS1.xts <- xts(BUKKOS1[,3:5], ttime)
BUKKOS1napi.xts <- apply.daily(BUKKOS1.xts, mean)
plot(BUKKOS1napi.xts)
plot (BUKKOS1napi.xts[,1])
plot (BUKKOS1napi.xts[,2])

##BUKKOS2 (2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(BUKKOS2[,2])
BUKKOS2.xts <- xts(BUKKOS2[,3:5], ttime)
BUKKOS2napi.xts <- apply.daily(BUKKOS2.xts, mean)
plot(BUKKOS2napi.xts)
plot (BUKKOS2napi.xts[,1])
plot (BUKKOS2napi.xts[,2])

##KKT1 (2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(KTT1[,2])
KTT1.xts <- xts(KTT1[,3:5], ttime)
KTT1napi.xts <- apply.daily(KTT1.xts, mean)
plot(KTT1napi.xts)
plot (KTT1napi.xts[,1])
plot (KTT1napi.xts[,2])

##KTT2 (2perces; hom[1]; para[,2])
ttime <- as.POSIXct(KTT2[,2])
KTT2.xts <- xts(KTT2[,3:5], ttime)
KTT2napi.xts <- apply.daily(KTT2.xts, mean)
plot(KTT2napi.xts)
plot (KTT2napi.xts[,1])
plot (KTT2napi.xts[,2])
