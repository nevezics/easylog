#Talajnedvesség-adatok hozzáadása
#Havi talajnedvesség-adatok a FieldScout alapján
library (readxl)
monthlymoist <- read_excel("Fieldscout_SM_2021_2025.xlsx", sheet = "meadow")
monthlymoist$`forest` <- as.numeric(sub(",", ".", monthlymoist$`forest`, fixed = TRUE))
monthlymoist$`edge` <- as.numeric(sub(",", ".", monthlymoist$`edge`, fixed = TRUE))
monthlymoist$`meadow` <- as.numeric(sub(",", ".", monthlymoist$`meadow`, fixed = TRUE))
