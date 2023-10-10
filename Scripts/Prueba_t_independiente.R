# Genaro Sánchez Tovar
# 21/Agosto/23
# Matricula: 2133642

# Dos tratamientos Crtl y Fert, un grupo de plantas
# Prueba de t independiente


# Importar ----------------------------------------------------------------
setwd("C:/Genaro Met.ES/Met_ES/Scripts")
vivero <- read.csv("IE.csv", header = T)


# Descriptivas ------------------------------------------------------------

# Usar la libreria dplyr para seleccionar datos mediante restricciones

library(dplyr)

Ctrl <- vivero %>% 
  filter(Tratamiento=="Ctrl")

Fert <- vivero %>% 
  filter(Tratamiento=="Fert")

