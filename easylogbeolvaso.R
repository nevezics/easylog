library(xts)

##Merohelyek
placename <- "HAZ1"
placename  <- "HAZ2"
placename  <- "EGER1"
placename  <- "EGER2"
placename <- "ESZEGELY1"
placename <- "ESZEGELY2"
Placename <- "BUKKOS1"
placename <- "BUKKOS2"
placename <- "KTT1"
placename <- "KTT2"

##TXTBeolvasas
filename <- dir("../hom_para_NCS", placename)
assign(placename, read.csv(paste0("../hom_para_NCS/", filename[1]), skip = 1, head = FALSE))
for(aktfile in filename[-1]) {
  assign(placename, rbind(get(placename), read.csv(paste0("../hom_para_NCS/", aktfile), skip = 1, head = FALSE)))
}

##HAZ1(1perces)
ttime <- as.POSIXct(HAZ1[,2])
HAZ1.xts <- xts(HAZ1[,3:5], ttime)
HAZ1napi.xts <- apply.daily(HAZ1.xts, mean)
plot(HAZ1napi.xts)

##HAZ2(2perces)
ttime <- as.POSIXct(HAZ2[,2])
HAZ2.xts <- xts(HAZ2[,3:5], ttime)
HAZ2napi.xts <- apply.daily(HAZ2.xts, mean)
plot(HAZ2napi.xts)

