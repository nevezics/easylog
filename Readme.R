placename  <- "EGER1"
placename  <- "EGER2"
placename  <- "HAZ1"
placename  <- "HAZ2"
placename <- "ESZEGELY2"

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
EGER.xts <- c(EGER1.xts, EGER2.xts)
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

