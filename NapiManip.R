## Date időre alakítás
ttESZ2n.idx <- as.Date(index(ESZEGELY2napi.xts))
ESZ2.D <- xts(coredata(ESZEGELY2napi.xts), order.by = ttESZ2n.idx)

ttE2n.idx <- as.Date(index(EGER2napi.xts))
E2.D <- xts(coredata(EGER2napi.xts), order.by = ttE2n.idx)


## Nekem simán képezi a különbséget
ESZ2.D-E2.D
