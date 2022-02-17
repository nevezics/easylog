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
