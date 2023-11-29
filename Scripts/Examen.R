# Genaro Sánchez Tovar
# Matricul: 2133642
# 29/Noviembre/2023

# Ejercicio 1 -------------------------------------------------------------

setwd("C:/Genaro Met.ES/Met_ES/Scripts")
Examen <- read.csv("Pesos_Examen.csv", header = TRUE)

mean(Examen$Encino) # 17.42667
mean(Examen$Pino) #12.24667

sum(Examen$Encino) #522.8
sum(Examen$Pino)^2 #134982.8

mean(Examen$Encino) - mean(Examen$Pino) #5.18

boxplot(Examen$Encino, Examen$Pino, xlab = "Cuadros de madera", ylab = "Peso (gr)", main = "Boxplot Examen", ylim = c(11, 19))

# Ejercicio 2 -------------------------------------------------------------

Azufre <- c(15.8, 22.7, 26.8, 19.1, 18.5, 14.4, 8.3, 25.9, 26.4, 9.8, 22.7, 15.2, 23.0, 29.6, 21.9, 10.5, 17.3, 6.2, 18.0, 22.9, 24.6, 19.4, 12.3, 15.9, 11.2, 14.7, 20.5, 26.6, 20.1, 17.0, 22.3, 27.5, 23.9, 17.5, 11.0, 20.4, 16.2, 20.8, 13.3, 18.1)

mean(Azufre) #18.7075

t.test(Azufre)
# t = 20.696, df = 39, p-value < 2.2e-16
#Los intervalo de confianza al 95% son: 16.87912 20.53588
#La hipotesis aceptada es alternativa, ya que no es igual a 0, siendo que es 18.7075
# El valor medio promedio de las emisiones observadas por la empresa, aunque es mayor, no es tan significativa como parece, ya que la empreza menciona que no se deben superar las 17.5 Ton/año, y las emisiones reales son de 18.7075 Ton/año, lo que resulta en una diferencia de 1.2075
