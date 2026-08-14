#Csapadékadatok hozzáadása
#Havi csapadék Hellmann alapján
library (readxl)
monthlyprec <- read_excel("Hellmann rain gauge_HVV.xlsx", sheet = "Hellmann rain gauge_HVV")
monthlyprec$`precipitation` <- as.numeric(sub(",", ".", monthlyprec$`precipitation`, fixed = TRUE))
monthlyprec.xts <- xts(monthlyprec$precipitation, monthlyprec$date)