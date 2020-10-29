# Reporte
## Cargar datos
Se tienen 5 archivos .cvs que se quieren importar, lo primero es cambiar el directorio. Luego se importan los archivos.
```r 
setwd("C:/este-directorio") 

lin.reg = read.csv("wine.csv")
lin.reg.test = read.csv("wine_test.csv")
log.reg = read.csv("quality.csv")
arbol.D = read.csv("stevens.csv")
cluster = read.csv("insurance.csv")
```

## Regresión lineal
### Creación del modelo de regresión lineal
Se utiliza **lm()** para crear un modelo de regresión lineal. Se crean considerando sus respectivas variables.
```r
modelo.reg.lin.0 = lm(Price ~ AGST, data = lin.reg)
modelo.reg.lin.1 = lm(Price ~ AGST + HarvestRain + WinterRain + Age + FrancePop, data = lin.reg)
modelo.reg.lin.2 = lm(Price ~ AGST + HarvestRain, data = lin.reg)
```

### Interpretación de modelos
Se utiliza **summary()** para conocer los coeficientes de las variables del modelo y su nivel de significancia.
```r
summary(modelo.reg.lin.0)
summary(modelo.reg.lin.1)
summary(modelo.reg.lin.2)
```

Se deben esperar resultados similares a este:
```
Call:
lm(formula = Price ~ AGST, data = lin.reg)

Residuals:
     Min       1Q   Median       3Q      Max 
-0.78450 -0.23882 -0.03727  0.38992  0.90318 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  -3.4178     2.4935  -1.371 0.183710    
AGST          0.6351     0.1509   4.208 0.000335 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.4993 on 23 degrees of freedom
Multiple R-squared:  0.435,	Adjusted R-squared:  0.4105 
F-statistic: 17.71 on 1 and 23 DF,  p-value: 0.000335
```

### Predicción de valores y medición de desempeño
Se utiliza **predict()** para predecir los valores de cada modelo.
```r
predicciones0 = predict(modelo.reg.lin.0, newdata = lin.reg.test)
predicciones1 = predict(modelo.reg.lin.1, newdata = lin.reg.test)
predicciones2 = predict(modelo.reg.lin.2, newdata = lin.reg.test)
```

El desempeño del modelo se mide obteniendo el valor del cuadrado de R en el set de datos de prueba con la fórmula R2 =1-(SSE/SST), para obtener SSE:
```r
SSE0 = sum((lin.reg.test$Price - predicciones0) ^ 2)
SSE1 = sum((lin.reg.test$Price - predicciones1) ^ 2)
SSE2 = sum((lin.reg.test$Price - predicciones2) ^ 2)
```

Para obtener SST (La suma de cuadrados):
```r
SST = sum((lin.reg.test$Price - mean(lin.reg$Price)) ^ 2)
```

Se obtinen las R cuadradas de todos los modelos:
```r
r2.0 = 1 - SSE0/SST
r2.1 = 1 - SSE1/SST
r2.2 = 1 - SSE2/SST
```

## Regresión logística
Se utiliza **str()** para ver la estructura.
```r
str(log.reg)
```

Resultado:
```
'data.frame':	131 obs. of  14 variables:
 $ MemberID            : int  1 2 3 4 5 6 7 8 9 10 ...
 $ InpatientDays       : int  0 1 0 0 8 2 16 2 2 4 ...
 $ ERVisits            : int  0 1 0 1 2 0 1 0 1 2 ...
 $ OfficeVisits        : int  18 6 5 19 19 9 8 8 4 0 ...
 $ Narcotics           : int  1 1 3 0 3 2 1 0 3 2 ...
 $ DaysSinceLastERVisit: num  731 411 731 158 449 ...
 $ Pain                : int  10 0 10 34 10 6 4 5 5 2 ...
 $ TotalVisits         : int  18 8 5 20 29 11 25 10 7 6 ...
 $ ProviderCount       : int  21 27 16 14 24 40 19 11 28 21 ...
 $ MedicalClaims       : int  93 19 27 59 51 53 40 28 20 17 ...
 $ ClaimLines          : int  222 115 148 242 204 156 261 87 98 66 ...
 $ StartedOnCombination: logi  FALSE FALSE FALSE FALSE FALSE FALSE ...
 $ AcuteDrugGapSmall   : int  0 1 5 0 0 4 0 0 0 0 ...
 $ PoorCare            : int  0 0 0 0 0 1 0 0 1 0 ...
```

### Creación de datos de prueba
Para dividir los datos en un set de entrenamiento y un set de prueba se instala esta librería.
```r
install.packages("caTools")
library(caTools)
```

Para poder replicar datos:
```r
set.seed(88)
```

Se divide el set de datos:
```r
split = sample.split(log.reg$PoorCare, SplitRatio = 0.75)
```

Se crean los set de prueba y entrenamiento:
```r
log.train = subset(log.reg, split == T)
log.test = subset(log.reg, split==F)
```

### Creación de modelo de regresión logística
Para crear un modelo de regresión logística se utiliza el siguiente comando
```r
modelo.reg.log.1 = glm(PoorCare ~ OfficeVisits + Narcotics, data = log.train, family = binomial)
```

Se hace un set de predicciones con los datos de entrenamiento agregando el argumento “type=’response’”, usado para predecir las probabilidades y la función “tapply()”, para verificar la media de estas predicciones.
```r
predict.train.log = predict(modelo.reg.log.1, newdata = log.train, type = "response")
tapply(predict.train.log, log.train$PoorCare, mean)
```

> Este modelo predice valores altos en los casos que existe un mal cuidado de la salud.

### Predicciones de valores y medición de desempeño
Se crea el set de predicciones con los valores de prueba. Se crea una tabla que contenga los valores de la variable dependiente en el set de pruebas y las predicciones del modelo en base al valor de tolerancia (.5) y así identificar si las observaciones han sido clasificadas correctamente.
```r
predict.log = predict(modelo.reg.log.1, newdata = log.test, type = "response")
table(log.test$PoorCare, predict.log > 0.5)
```

### Gráfica e la curva ROC para elegir el valor de tolerancia
Para elegir el valor de tolerancia, se utiliza la curva ROC (Reciever Operator Characteristic), que grafica las proporciones de observaciones que se clasificarán como verdaderos positivos y falsos positivos dependiendo del nivel de tolerancia.
```r
install.packages("ROCR")
```
> La práctica original tapaba este cóigo, lo miraré después.

## Árboles de decisión
### Creación del set de datos
Se crea un set de datos de entrenamiento y de prueba. 
```r
library(caTools)
set.seed(3000)
split = sample.split(arbol.D$Reverse, SplitRatio = 0.7)
train.arbol = subset(arbol.D, split==T)
test.arbol = subset(arbol.D, split==F)
```

### Instalar librerías
```r
install.packages("rpart")
install.packages("rpart.plot")
```

```r
library(rpart)
library(rpart.plot)
```

### Creación el árbol de clasificación
Se utiliza la función **rpart()** para crear el árbol de decisión.
```r
modelo.arbol = rpart(Reverse ~ Circuit + Issue + Petitioner + LowerCourt + Unconst, 
data = train.arbol, method = "class", minbucket = 25)
```

> Se creará un árbol de clasificación, para ello se requiere utilizar el argumento **method** al que se le asignará el valor **class**. El argumento **minbucket** sirve para controlar el número de ramas del árbol, ya que si éste es muy bajo se crearan muchas ramas y el modelo no podrá predecir valores que estén fuera del set de datos de entrenamiento y si es muy alto, el modelo será muy simple y la precisión muy baja.

### Interpretación del árbol de clasificación
Para graficar:
```r
prp(modelo.arbol)
```

### Predicciones
Se usa **predict()** para el set de datos de prueba.
```r
pred.arbol = predict(modelo.arbol, newdata = test.arbol, type = "class")
```

Se realiza una tabla para verificar la precisión de este modelo y visualizar como se han clasificado los datos, en el eje de las x se visualizan las predicciones del modelo y en el eje de las y los valores del set de prueba.
```r
table(test.arbol$Reverse, pred.arbol)
```
