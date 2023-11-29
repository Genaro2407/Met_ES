# Genaro Sánchez Tovar
# 25/Septiembre/2023
# Matricula: 2133642


# Importar ----------------------------------------------------------------

setwd("C:/Genaro Met.ES/Met_ES/Scripts")
Canopy <- read.csv("canopy.csv", header = T)
Canopy$Forest <- as.factor(Canopy$Forest)


# Gráfica -----------------------------------------------------------------

plot(Canopy$Cnpy, Canopy$GLI)
# Asociacion positiva

plot(Canopy$Cnpy, Canopy$LAI4)
# Asociacion negativa

plot(Canopy$LAI4, Canopy$GLI)
# Asociacion negativa


# Personalizar ------------------------------------------------------------

plot(Canopy$Cnpy, Canopy$LAI4, xlab = "Apertura dosel", ylab = "Area foliar",main = "Bosque escuela", 
     col="lightgreen", pch=19)
cor.test(Canopy$Cnpy, Canopy$LAI4)

text(25,1.2, "r=-0.833416")
