#Csapadékadatok hozzáadása
#Havi csapadék Hellmann alapján
library (readxl)
monthlyprec <- read_excel("Hellmann rain gauge_HVV.xlsx", sheet = "Hellmann rain gauge_HVV")
monthlyprec$`Precipitation (mm)` <- as.numeric(sub(",", ".", monthlyprec$`Precipitation (mm)`, fixed = TRUE))
