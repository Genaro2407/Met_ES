# Genaro Sánchez Tovar
# 28/Noviembre/23
# Matricula: 2133642

# Importar datos ----------------------------------------------------------

setwd ("C:/Genaro Met.ES/Met_ES/Scripts")
Temperaturas <- read.csv("Temp_julio.csv", header = TRUE)
head (Temperaturas)

# Medidas de tendencia central --------------------------------------------

# Media -------------------------------------------------------------------

mean(Temperaturas$Temperatura.Mínima)
mean(Temperaturas$Temperatura.Máxima)

# Mediana -----------------------------------------------------------------

median(Temperaturas$Temperatura.Mínima)
median(Temperaturas$Temperatura.Máxima)

# Rango -------------------------------------------------------------------

range(Temperaturas$Temperatura.Mínima)
range(Temperaturas$Temperatura.Máxima)

# Fivenum -----------------------------------------------------------------

fivenum(Temperaturas$Temperatura.Mínima)
fivenum(Temperaturas$Temperatura.Máxima)

# Medidas de dispersión ---------------------------------------------------

# Desviación estandar -----------------------------------------------------

sd(Temperaturas$Temperatura.Mínima)
sd(Temperaturas$Temperatura.Máxima)

# Varianza ----------------------------------------------------------------

var(Temperaturas$Temperatura.Mínima)
var(Temperaturas$Temperatura.Máxima)

# Boxplot -----------------------------------------------------------------

boxplot(Temperaturas$Temperatura.Mínima, col = "lightgreen")
boxplot(Temperaturas$Temperatura.Máxima, col = "lightgreen")

plot(Temperaturas$Temperatura.Mínima ~ Temperaturas$Temperatura.Máxima, col ="lightgreen", pch = 19 )

# Prueba t ----------------------------------------------------------------

t.test(Temperaturas$Temperatura.Mínima)
t.test(Temperaturas$Temperatura.Máxima)

# Correlación -------------------------------------------------------------

cor.test(Temperaturas$Temperatura.Mínima, Temperaturas$Temperatura.Máxima)
# t = 139.31, df = 29, p-value < 2.2e-16

summary(Temperaturas)
# Temperatura.Máxima Temperatura.Mínima
# Min.   :26.75      Min.   :25.97
# 1st Qu.:29.58      1st Qu.:28.85
# Median :30.30      Median :29.67
# Mean   :30.19      Mean   :29.49
# 3rd Qu.:30.87      3rd Qu.:30.17
# Max.   :32.15      Max.   :31.46

# Hipótesis ---------------------------------------------------------------

# La correlacion es igual a 0.9992537
# Se observo que entre las temperaturas máximas y míminas no hay mucha diferencia, ya que estas temperaturas pertenecen al mes de julio del año 2022, por lo que la temperatura no varia demasiado