# Genaro Sánchez Tovar
# 21/Agosto/23
# Matricula: 2133642


# Importar datos ----------------------------------------------------------
# Funcion read.csv (sirve para importar datos csv a R)

setwd("C:/Genaro Met.ES/Met_ES/Scripts")
mediciones <- read.csv("mediciones.csv", header = TRUE)
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

# Hipótesis ---------------------------------------------------------------

# xobs = 10.17 vs xteo = 11
# Los bortes de cedro deberian alcanzar una altura de 11 cm en un año de acuerdo a comentarios de viveristas
# El valor de alta referencia es 0.05

# Procedimiento -----------------------------------------------------------

# Aplicar la funcion t.test

t.test(mediciones$Altura, mu = 11 )

# "df" = grados de libertad

t.test(mediciones$Altura, mu = 10.5)
t.test(mediciones$Altura, mu = 10.6)
t.test(mediciones$Altura, mu = 10.55)

# Replicabilidad ----------------------------------------------------------

# Guardar la prueba de t en un objeto llamado "prueba"

prueba <- t.test(mediciones$Altura, mu = 11)

# conocer los grados de libertad
prueba$parameter

# conocer el p-value
prueba$p.value

# conocer intervalos de confianza
prueba$conf.int
