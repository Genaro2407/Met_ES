# Genaro Sánchez Tovar
# 25/Septiembre/2023
# Matricula: 2133642

library(repmis)

erupciones <- source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")


# Estadísticas descriptivas -----------------------------------------------

mean(erupciones$eruptions) #3.487783
mean(erupciones$waiting) #70.89706

sd(erupciones$eruptions) #1.141371
sd(erupciones$waiting) #13.59497

var(erupciones$eruptions)#1.302728
var(erupciones$waiting) #184.8233

# Hipótesis ---------------------------------------------------------------

#Hipótesis alternativa: La correlacion no es igual a cero

# Correlación -------------------------------------------------------------

cor.test(erupciones$eruptions, erupciones$waiting) #r=0.9008112
#Con el resultado anterior podemos concluir que la correlacion si es significativa.


# Grafica -----------------------------------------------------------------

plot(erupciones$waiting, erupciones$eruptions, xlab = "Tiempo de espera entre erupciones (min)",
     ylab = "Duración de las erupciones (min)", col="darkgreen",  pch = 19)

erup.lm <- lm (erupciones$eruptions ~ erupciones$waiting)

summary(erup.lm)

erupciones$yprima <- -1.874+0.075*erupciones$waiting

erupciones$estimados <- erup.lm$fitted.values

abline(erup.lm, col = "red")

range(erupciones$waiting) #43, 96

erup <- c(80, 43, 45, 53, 61, 95)

ypr <- -1.874016 + 0.075628 * erup

-1.874016 + 0.075628 * 80 #4 4.176224
-1.874016 + 0.075628 * 43 #1 1.377988
-1.874016 + 0.075628 * 45 #1 1.529244
-1.874016 + 0.075628 * 53 #2 2.134268
-1.874016 + 0.075628 * 61 #2 2.739292
-1.874016 + 0.075628 * 95 #5 5.310644

# El rango de los valores de x son mi ventana de preiccion de yprima