## Mérőhelyek összehasonlítása

library (xts)

## Szabadtér (HAZ2) és égeres állomány (EGER2) napi átlag, 2perces
plot.zoo (HAZ2napi.xts [,1], col=2)
lines (as.zoo (EGER2napi.xts [,1]), col=1)

## Szabadtér (HAZ2) és égeres erdőszegély (ESZEGELY2) napi átlag, 2perces
plot.zoo (HAZ2napi.xts ['2021-06/2022-01',1], col=2)
lines (as.zoo(ESZEGELY2napi.xts[,1]), col=1)
       
## Égeres állomány (EGER2) és égeres erdőszegély (ESZEGELY2) napi átlag, 2perces
plot.zoo (EGER1napi.xts['2021-06/2022-01',1], col=2)
lines (as.zoo (ESZEGELY2napi.xts[,1]), col=1)

## Égeres állomány (EGER2) és bükkös állomány (BUKKOS2) napi átlag, 2perces
plot.zoo (EGER2napi.xts['2021-06/2022-01',1], col=2)
lines (as.zoo (BUKKOS2napi.xts[,1]), col=1)

## Égeres állomány (EGER2) és kocsánytalan tölgyes állomány (KTT2) napi átlag, 2perces
plot.zoo (EGER2napi.xts['2021-06/2022-01',1], col=2)
lines (as.zoo (KTT2napi.xts[,1]), col=1)

## Bükkös állomány (BUKKOS2) és kocsánytalan tölgyes állomány (KTT2) napi átlag, 2perces
plot.zoo (BUKKOS2napi.xts[,1], col=2)
lines (as.zoo(KTT2napi.xts[,1]), col=1)
