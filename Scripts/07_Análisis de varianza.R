# Genaro Sánchez Tovar
# 10/Octubre/2023
# Matricula: 2133642

# Importar datos ----------------------------------------------------------

library(repmis)
DAP <- source_data("https://www.dropbox.com/s/fbrwxypacjgeayj/Datos_Rascon_Anova.csv?dl=1")
DAP$Paraje <- as.factor(DAP$Paraje)
DAP$SP <- as.factor(DAP$SP)

# Determinar estadísticas descriptivas ------------------------------------

boxplot(DAP$EDAD ~ DAP$Paraje, xlab = "Paraje", ylab = "Edad")
boxplot(DAP$DAP ~ DAP$Paraje, xlab = "Paraje", ylab = "DAP")

tapply(DAP$EDAD, DAP$Paraje, mean)
tapply(DAP$EDAD, DAP$Paraje, var)

# Normalidad reviasr ------------------------------------------------------

shapiro.test(DAP$DAP)
hist(DAP$DAP, xlab = "DAP", ylab = "Frecuencia", main = "Histrograma del DAP", col = "lightgreen")
# Los datos del DAP no son normales

bartlett.test(DAP$DAP ~ DAP$Paraje)
# Las varianzas de los tratamientos son iguales

# Transformar DAP para cumplir normalidad ---------------------------------

DAP$raiz <- sqrt(DAP$DAP)
hist(DAP$raiz, xlab = "Raiz", ylab = "Frecuencia", main = "Histrograma de la raiz del DAP", col = "lightgreen")

# Probar normalidad a los datos transformados (raíz cuadrada) -------------

shapiro.test(DAP$raiz)
# Los datos de ahora son normales

# Probar homogeneidad de varianzas de los datos transformados -------------

bartlett.test(DAP$raiz ~ DAP$Paraje)

dap.aov <- aov(DAP$raiz ~ DAP$Paraje)
summary(dap.aov)
boxplot(DAP$raiz ~ DAP$Paraje, ylab = "Raíz", xlab = "Paraje", main = "Boxplot", col = "lightgreen")

TukeyHSD(dap.aov)
plot(TukeyHSD(dap.aov))
