#Codigo para problema 2

#cargamos la lista de mis dades

mis_dades <- iris

mis_dades

#petalos en la variable x, sepalo en la variable y.

x <- mis_dades$Petal.Length

y <- mis_dades$Sepal.Length

#cargamos una "grafica" con los variables antes puestos

plot(x,y)

#hacemos la recta de regresion lineal


x_bar <- mean(x)
x_bar

y_bar <- mean(y)
y_bar

m <- sum ((x-x_bar)*(y-y_bar))/sum((x-x_bar)^2)
m

b <- y_bar - m * x_bar
b


m*1.5+b

#prediccion de mis observaciones

y_pred <- m*x-b
plot(x, y)
lines(x, y_pred)
R_sq <- sum((y_pred-y_bar)^2)/sum((y-y_bar)^2)
R_sq

#funciones de R
mod <- lm(y~x)
mod
summary(mod)


cor.test(x,y)











