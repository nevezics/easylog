## 1 és 2 perces adatsorok összehasonlítása

library (xts)

## Ház előtti műszerek összehasonlítása
plot.zoo (HAZ1napi.xts [,1], col=2)
lines (as.zoo(HAZ2napi.xts [,1]), col=1)

## Égeres állományban lévő műszerek összehasonlítása
plot.zoo(EGER1napi.xts [,1], col=2)
lines (as.zoo(EGER2napi.xts [,1]), col=1)
