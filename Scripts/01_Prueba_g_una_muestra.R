# Genaro Sánchez Tovar
# 21/Agosto/23
# Matricula: 2133642


# Importar datos ----------------------------------------------------------
# Funcion read.csv (sirve para importar datos csv a R)

mediciones <- read.csv("Scripts/mediciones.csv", header = TRUE)
head(mediciones) # funcion head (sirve para ver los primeros 6 datos)

# Descriptivas ------------------------------------------------------------
# medidas de tendencia central: media, mediana, rango...

mean(mediciones$Altura) # Promedio (media)
median(mediciones$Altura) # Mediana
range(mediciones$Altura) # Rango (muestra el primer y ultimo dato)
fivenum(mediciones$Altura) # Representa los 5 numeros del boxplot

# Medidas de dispersión: Desviacion estandar, varianza...

sd(mediciones$Altura) # Desviacion estandar
var(mediciones$Altura) # Varianza


# Graficas ----------------------------------------------------------------

boxplot(mediciones$Altura, col = "lightgreen", ylab = "Altura 8cm", main = "Sitio 1", ylim = c(6,14))
