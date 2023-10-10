# Genaro Sánchez Tovar
# 05/Septiembre/23
# Matricula: 2133642

# Dos tratamientos a y b, un grupo de plantas
# Prueba t Student

# Importar ----------------------------------------------------------------
setwd("C:/Genaro Met.ES/Met_ES/Scripts")
Tarea <- read.csv("Tarea.csv", header = T)


# Descriptivas ------------------------------------------------------------

library(dplyr)

a <- Tarea %>% 
  filter(Tratamiento=="a")

b <- Tarea %>% 
  filter(Tratamiento=="b")

mean(a$Diametro)
mean(b$Diametro)

Descriptor <- Tarea %>%
  group_by(Tratamiento) %>%
  summarise(
    n=n(),
    media=mean(Diametro),
    mediana=median(Diametro),
    sd=sd(Diametro),
    var=var(Diametro))

Descriptor
# Gráfica -----------------------------------------------------------------

boxplot(Tarea$Diametro~Tarea$Tratamiento,
        xlab = "Tratamiento",
        ylab = "Diametro",
        main = "Árboles",
        col = "lightgreen")

t.test(Tarea$Diametro~Tarea$Tratamiento,var.equal=T)


# Conlusiones -------------------------------------------------------------

# Se concluye que que los individuos tratados con fertilizarnte, no solo no tuvieron mejoras, sino que fueron 
# considerablemente perjudicados por culpa del fertilizante, a diferencia de los inidivuos que no usaron el fertilizante,
# entre el grupo a y b, hubo una diferencia de 6, donde el grupo "a" fue el mas perjudicado.