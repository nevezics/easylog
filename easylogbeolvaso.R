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
#Órás hőmérséklet
hourly.temp <- endpoints(HAZ1.xts[,1],"hours")
HAZ1orashom.xts <- period.apply(HAZ1.xts[,1], hourly.temp, mean)
#Órás pára
hourly.hum <- endpoints (HAZ1.xts[,2],"hours")
HAZ1oraspara.xts <- period.apply(HAZ1.xts [,2], hourly.hum, mean)
#Napi és havi átlagok
HAZ1napi.xts <- apply.daily(HAZ1.xts, mean)
HAZ1havi.xts <- apply.monthly(HAZ1.xts, mean)
#Vizualizáció
plot (HAZ1.xts[,1])
plot (HAZ1.xts[,2])
plot (HAZ1orashom.xts,
      main="HAZ1 hourly temperature data",
      ylab="°C",
      col="orangered")
plot (HAZ1oraspara.xts,
      main="HAZ1 hourly humidity data",
      ylab="%",
      col="purple4")
plot (HAZ1napi.xts[,1],
      main="HAZ1 daily temperature data",
      ylab="°C",
      col="orangered")
plot (HAZ1napi.xts[,2],
      main="HAZ1 daily humidity data",
      ylab="%",
      col="purple4")
plot (HAZ1havi.xts [,1],
      main="HAZ1 monthly temperature data",
      ylab="°C",
      col="orangered")
plot (HAZ1havi.xts [,2],
      main="HAZ1 monthly humidity data",
      ylab="%",
      col="purple4")
#Excel adattáblák
write.zoo (HAZ1napi.xts[,1], "HAZ1hom.csv",sep=";",dec=",")
write.zoo(HAZ1havi.xts [,1], "HAZ1havihom.csv",sep=";",dec=",")
write.zoo (HAZ1napi.xts[,2], "HAZ1para.csv",sep=";",dec=",")
write.zoo (HAZ1havi.xts [,2], "HAZ1havipara.csv",sep=";",dec=",")

##HAZ2(2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(HAZ2[,2])
HAZ2.xts <- xts(HAZ2[,3:5], ttime)
#Órás hőmérséklet
hourly.temp <- endpoints(HAZ2.xts[,1],"hours")
HAZ2orashom.xts <- period.apply(HAZ2.xts[,1], hourly.temp, mean)
#Órás pára
hourly.hum <- endpoints (HAZ2.xts[,2],"hours")
HAZ2oraspara.xts <- period.apply(HAZ2.xts [,2], hourly.hum, mean)
#Napi és havi átlagok
HAZ2napi.xts <- apply.daily(HAZ2.xts, mean)
HAZ2havi.xts <- apply.monthly(HAZ2.xts, mean)
#Vizualizáció
plot (HAZ2.xts[,1])
plot (HAZ2.xts[,2])
plot (HAZ2orashom.xts)
plot (HAZ2oraspara.xts)
plot (HAZ2napi.xts[,1])
plot (HAZ2napi.xts[,2])
plot (HAZ2havi.xts [,1])
plot (HAZ2havi.xts [,2])
#Excel adattáblák
write.zoo (HAZ2napi.xts[,1], "HAZ2hom.csv",sep=";",dec=",")
write.zoo(HAZ2havi.xts [,1], "HAZ2havihom.csv",sep=";",dec=",")
write.zoo (HAZ2napi.xts[,2], "HAZ2para.csv",sep=";",dec=",")
write.zoo (HAZ2havi.xts [,2], "HAZ2havipara.csv",sep=";",dec=",")

##EGER1 (1perces; hom[,1]; para[,2])
ttime <- as.POSIXct(EGER1[,2])
EGER1.xts <- xts(EGER1[,3:5], ttime)
#Órás hőmérséklet
hourly.temp <- endpoints(EGER1.xts[,1],"hours")
EGER1orashom.xts <- period.apply(EGER1.xts[,1], hourly.temp, mean)
#Órás pára
hourly.hum <- endpoints (EGER1.xts[,2],"hours")
EGER1oraspara.xts <- period.apply(EGER1.xts [,2], hourly.hum, mean)
#Napi és havi átlagok
EGER1napi.xts <- apply.daily(EGER1.xts, mean)
EGER1havi.xts <- apply.monthly(EGER1.xts, mean)
#Vizualizáció
plot (EGER1.xts[,1])
plot (EGER1.xts[,2])
plot (EGER1orashom.xts)
plot (EGER1oraspara.xts)
plot (EGER1napi.xts[,1])
plot (EGER1napi.xts[,2])
plot (EGER1havi.xts [,1])
plot (EGER1havi.xts [,2])
#Excel adattáblák
write.zoo (EGER1napi.xts[,1], "EGER1hom.csv",sep=";",dec=",")
write.zoo(EGER1havi.xts [,1], "EGER1havihom.csv",sep=";",dec=",")
write.zoo (EGER1napi.xts[,2], "EGER1para.csv",sep=";",dec=",")
write.zoo (EGER1havi.xts [,2], "EGER1havipara.csv",sep=";",dec=",")

##EGER2 (2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(EGER2[,2])
EGER2.xts <- xts(EGER2[,3:5], ttime)
#Órás hőmérséklet
hourly.temp <- endpoints(EGER2.xts[,1],"hours")
EGER2orashom.xts <- period.apply(EGER2.xts[,1], hourly.temp, mean)
#Órás pára
hourly.hum <- endpoints (EGER2.xts[,2],"hours")
EGER2oraspara.xts <- period.apply(EGER2.xts [,2], hourly.hum, mean)
#Napi és havi átlagok
EGER2napi.xts <- apply.daily(EGER2.xts, mean)
EGER2havi.xts <- apply.monthly(EGER2.xts, mean)
#Vizualizáció
plot (EGER2.xts[,1])
plot (EGER2.xts[,2])
plot (EGER2orashom.xts)
plot (EGER2oraspara.xts)
plot (EGER2napi.xts[,1])
plot (EGER2napi.xts[,2])
plot (EGER2havi.xts [,1])
plot (EGER2havi.xts [,2])
#Excel adattáblák
write.zoo (EGER2napi.xts[,1], "EGER2hom.csv",sep=";",dec=",")
write.zoo(EGER2havi.xts [,1], "EGER2havihom.csv",sep=";",dec=",")
write.zoo (EGER2napi.xts[,2], "EGER2para.csv",sep=";",dec=",")
write.zoo (EGER2havi.xts [,2], "EGER2havipara.csv",sep=";",dec=",")

##ESZEGELY1 (2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(ESZEGELY1[,2])
ESZEGELY1.xts <- xts(ESZEGELY1[,3:5], ttime)
#Órás hőmérséklet
hourly.temp <- endpoints(ESZEGELY1.xts[,1],"hours")
ESZEGELY1orashom.xts <- period.apply(ESZEGELY1.xts[,1], hourly.temp, mean)
#Órás pára
hourly.hum <- endpoints (ESZEGELY1.xts[,2],"hours")
ESZEGELY1oraspara.xts <- period.apply(ESZEGELY1.xts [,2], hourly.hum, mean)
#Napi és havi átlagok
ESZEGELY1napi.xts <- apply.daily(ESZEGELY1.xts, mean)
ESZEGELY1havi.xts <- apply.monthly(ESZEGELY1.xts, mean)
#Vizualizáció
plot (ESZEGELY1.xts[,1])
plot (ESZEGELY1.xts[,2])
plot (ESZEGELY1orashom.xts)
plot (ESZEGELY1oraspara.xts)
plot (ESZEGELY1napi.xts[,1])
plot (ESZEGELY1napi.xts[,2])
plot (ESZEGELY1havi.xts [,1])
plot (ESZEGELY1havi.xts [,2])
#Excel adattáblák
write.zoo (ESZEGELY1napi.xts[,1], "ESZEGELY1hom.csv",sep=";",dec=",")
write.zoo(ESZEGELY1havi.xts [,1], "ESZEGELY1havihom.csv",sep=";",dec=",")
write.zoo (ESZEGELY1napi.xts[,2], "ESZEGELY1para.csv",sep=";",dec=",")
write.zoo (ESZEGELY1havi.xts [,2], "ESZEGELY1havipara.csv",sep=";",dec=",")

##ESZEGELY2 (2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(ESZEGELY2[,2])
ESZEGELY2.xts <- xts(ESZEGELY2[,3:5], ttime)
#Órás hőmérséklet
hourly.temp <- endpoints(ESZEGELY2.xts[,1],"hours")
ESZEGELY2orashom.xts <- period.apply(ESZEGELY2.xts[,1], hourly.temp, mean)
#Órás pára
hourly.hum <- endpoints (ESZEGELY2.xts[,2],"hours")
ESZEGELY2oraspara.xts <- period.apply(ESZEGELY2.xts [,2], hourly.hum, mean)
#Napi és havi átlagok
ESZEGELY2napi.xts <- apply.daily(ESZEGELY2.xts, mean)
ESZEGELY2havi.xts <- apply.monthly(ESZEGELY2.xts, mean)
#Vizualizáció
plot (ESZEGELY2.xts[,1])
plot (ESZEGELY2.xts[,2])
plot (ESZEGELY2orashom.xts)
plot (ESZEGELY2oraspara.xts)
plot (ESZEGELY2napi.xts[,1])
plot (ESZEGELY2napi.xts[,2])
plot (ESZEGELY2havi.xts [,1])
plot (ESZEGELY2havi.xts [,2])
#Excel adattáblák
write.zoo (ESZEGELY2napi.xts[,1], "ESZEGELY2hom.csv",sep=";",dec=",")
write.zoo(ESZEGELY2havi.xts [,1], "ESZEGELY2havihom.csv",sep=";",dec=",")
write.zoo (ESZEGELY2napi.xts[,2], "ESZEGELY2para.csv",sep=";",dec=",")
write.zoo (ESZEGELY2havi.xts [,2], "ESZEGELY2havipara.csv",sep=";",dec=",")

##BUKKOS1 (2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(BUKKOS1[,2])
BUKKOS1.xts <- xts(BUKKOS1[,3:5], ttime)
#Órás hőmérséklet
hourly.temp <- endpoints(BUKKOS1.xts[,1],"hours")
BUKKOS1orashom.xts <- period.apply(BUKKOS1.xts[,1], hourly.temp, mean)
#Órás pára
hourly.hum <- endpoints (BUKKOS1.xts[,2],"hours")
BUKKOS1oraspara.xts <- period.apply(BUKKOS1.xts [,2], hourly.hum, mean)
#Napi és havi átlagok
BUKKOS1napi.xts <- apply.daily(BUKKOS1.xts, mean)
BUKKOS1havi.xts <- apply.monthly(BUKKOS1.xts, mean)
#Vizualizáció
plot (BUKKOS1.xts[,1])
plot (BUKKOS1.xts[,2])
plot (BUKKOS1orashom.xts)
plot (BUKKOS1oraspara.xts)
plot (BUKKOS1napi.xts[,1])
plot (BUKKOS1napi.xts[,2])
plot (BUKKOS1havi.xts [,1])
plot (BUKKOS1havi.xts [,2])
#Excel adattáblák
write.zoo (BUKKOS1napi.xts[,1], "BUKKOS1hom.csv",sep=";",dec=",")
write.zoo(BUKKOS1havi.xts [,1], "BUKKOS1havihom.csv",sep=";",dec=",")
write.zoo (BUKKOS1napi.xts[,2], "BUKKOS1para.csv",sep=";",dec=",")
write.zoo(BUKKOS1havi.xts [,2], "BUKKOS1havipara.csv",sep=";",dec=",")

##BUKKOS2 (2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(BUKKOS2[,2])
BUKKOS2.xts <- xts(BUKKOS2[,3:5], ttime)
#Órás hőmérséklet
hourly.temp <- endpoints(BUKKOS2.xts[,1],"hours")
BUKKOS2orashom.xts <- period.apply(BUKKOS2.xts[,1], hourly.temp, mean)
#Órás pára
hourly.hum <- endpoints (BUKKOS2.xts[,2],"hours")
BUKKOS2oraspara.xts <- period.apply(BUKKOS2.xts [,2], hourly.hum, mean)
#Napi és havi átlagok
BUKKOS2napi.xts <- apply.daily(BUKKOS2.xts, mean)
BUKKOS2havi.xts <- apply.monthly(BUKKOS2.xts, mean)
#Vizualizáció
plot (BUKKOS2.xts[,1])
plot (BUKKOS2.xts[,2])
plot (BUKKOS2orashom.xts)
plot (BUKKOS2oraspara.xts)
plot (BUKKOS2napi.xts[,1])
plot (BUKKOS2napi.xts[,2])
plot (BUKKOS2havi.xts [,1])
plot (BUKKOS2havi.xts [,2])
#Excel adattáblák
write.zoo (BUKKOS2napi.xts[,1], "BUKKOS2hom.csv",sep=";",dec=",")
write.zoo(BUKKOS2havi.xts [,1], "BUKKOS2havihom.csv",sep=";",dec=",")
write.zoo (BUKKOS2napi.xts[,2], "BUKKOS2para.csv",sep=";",dec=",")
write.zoo(BUKKOS2havi.xts [,2], "BUKKOS2havipara.csv",sep=";",dec=",")

##KKT1 (2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(KTT1[,2])
KTT1.xts <- xts(KTT1[,3:5], ttime)
#Órás hőmérséklet
hourly.temp <- endpoints(KTT1.xts[,1],"hours")
KTT1orashom.xts <- period.apply(KTT1.xts[,1], hourly.temp, mean)
#Órás pára
hourly.hum <- endpoints (KTT1.xts[,2],"hours")
KTT1oraspara.xts <- period.apply(KTT1.xts [,2], hourly.hum, mean)
#Napi és havi átlagok
KTT1napi.xts <- apply.daily(KTT1.xts, mean)
KTT1havi.xts <- apply.monthly(KTT1.xts, mean)
#Vizualizáció
plot (KTT1.xts[,1])
plot (KTT1.xts[,2])
plot (KTT1orashom.xts)
plot (KTT1oraspara.xts)
plot (KTT1napi.xts[,1])
plot (KTT1napi.xts[,2])
plot (KTT1havi.xts [,1])
plot (KTT1havi.xts [,2])
#Excel adattáblák
write.zoo (KTT1napi.xts[,1], "KTT1hom.csv",sep=";",dec=",")
write.zoo(KTT1havi.xts [,1], "KTT1havihom.csv",sep=";",dec=",")
write.zoo (KTT1napi.xts[,2], "KTT1para.csv",sep=";",dec=",")
write.zoo(KTT1havi.xts [,2], "KTT1havipara.csv",sep=";",dec=",")

##KTT2 (2perces; hom[1]; para[,2])
ttime <- as.POSIXct(KTT2[,2])
KTT2.xts <- xts(KTT2[,3:5], ttime)
#Órás hőmérséklet
hourly.temp <- endpoints(KTT2.xts[,1],"hours")
KTT2orashom.xts <- period.apply(KTT2.xts[,1], hourly.temp, mean)
#Órás pára
hourly.hum <- endpoints (KTT2.xts[,2],"hours")
KTT2oraspara.xts <- period.apply(KTT2.xts [,2], hourly.hum, mean)
#Napi és havi átlagok
KTT2napi.xts <- apply.daily(KTT2.xts, mean)
KTT2havi.xts <- apply.monthly(KTT2.xts, mean)
#Vizualizáció
plot (KTT2.xts[,1])
plot (KTT2.xts[,2])
plot (KTT2orashom.xts)
plot (KTT2oraspara.xts)
plot (KTT2napi.xts[,1])
plot (KTT2napi.xts[,2])
plot (KTT2havi.xts [,1])
plot (KTT2havi.xts [,2])
#Excel adattáblák
write.zoo (KTT2napi.xts[,1], "KTT2hom.csv",sep=";",dec=",")
write.zoo(KTT2havi.xts [,1], "KTT2havihom.csv",sep=";",dec=",")
write.zoo (KTT2napi.xts[,2], "KTT2para.csv",sep=";",dec=",")
write.zoo(KTT2havi.xts [,2], "KTT2havipara.csv",sep=";",dec=",")
