# Segunda evaluación - examen práctico
## Instrucciones
* Diseña e implementa un dashboard con tu set de datos, justifica en un documento la información y gráficos que estás presentando, en donde se vea claramente las preguntas y respuestas que ofrece tu tablero.
* Diseña un modelo predictivo con tu set de datos con R, documenta el desarrollo de tu modelo, así como su interpretación.

**RECURSOS:**
* Tableau prep
* Tableau desktop
* R Studio

**ENTREGABLES:**
* archivo de tableau
* archivos de R
* documento de texto con la justificación del proyecto y los elementos documentales planteados en el ejercicio.

## Dashboard en Tableau
Se utilizó [SkillCraft](https://github.com/pbldmngz/school/blob/master/7mo/SIN/examen_segunda_evaluacion/res/SkillCraft1_Dataset.csv), un dataset con información detallada de partidas de StarCraft II, para obtener información relevante a la hora de intentar ser el mejor en ese juego. [Ver aquí información específica](https://github.com/pbldmngz/school/blob/master/7mo/SIN/examen_segunda_evaluacion/res/SkillCraft1%20Master%20Table%20Dataset%20Data%20Set.pdf).

Dato que la información disponible dentro del archivo ya *parecía* procesada, se decidió que no era necesario limpiarla, por lo tanto no se hará uso de Tableau Prep para esta práctica. En cuanto a los dashboards, para facilitar su comprensión, se decidió dividir la información obtenida en tres, uno a modo de introducción y otros dos sobre mecánicas de juego que se deben tener en cuenta para subir por los rangos. 

> Debo destacar que la información para jugadores de nivel profesional era limitada, por lo que no se verá su información en algunas gráficas.

**Estos dashboards resuelven, cuanto menos, las siguientes preguntas:**
* ¿A qué liga pertenece el TOP 1% de los jugadores?
* ¿Qué habilidades tienen los mejores jugadores con respecto al resto?
* ¿Que acciones en concreto diferencian a un jugador de alto rango de un profesional?

> Estas son las preguntas iniciales con las que se crearon los dashboards, en general esta información está pensada para jugadores buenos que se han **estancado** en un rango y no saben por qué ya no pueden subir más.

### Dashboard: Introducción
![Dashboard#1](https://github.com/pbldmngz/school/blob/master/7mo/SIN/examen_segunda_evaluacion/dashboard_img/Datos.png)

A modo de introducción, en este dashboard se pretende dar información al usuario de lo que simbolizar algunos datos, como la **distribución de personas por liga**, en porcentajes. Aquí se puede ver claramente que la mayoría de las personas de esta muestra estan en los **rangos promedio**, que corresponden a platino y diamante. 

También se añadió una gráfica que da **información curiosa**, no particularmente relevante pero si era necesario destacar. Lo que se ve es que una parte de la población de **jugadores promedio** juega tanto que por si solos **duplicaron** el tiempo promedio de juego. Esta gráfica compara la [mediana](https://es.wikipedia.org/wiki/Mediana_(estadística)) con el [promedio](https://es.wikipedia.org/wiki/Media_aritmética) de los datos y a decir verdad, no era del todo inesperado.

### Dashboard: Lo que SÍ hacen los PROs
![Dashboard#2](https://github.com/pbldmngz/school/blob/master/7mo/SIN/examen_segunda_evaluacion/dashboard_img/Lo%20que%20los%20pros%20SI%20hacen.png)

Era de esperarse que en un juego en tiempo real tan complejo como lo es *StarCraft*, los mejores jugadores destaquen por hacer valer su tiempo. Como se puede apreciar en estas gráficas, según aumenta tu rango/liga, también lo hacen ciertas acciones dentro del juego, estas vienen agrupadas dentro de **"Acciones por Minuto"**. Algunas de estas acciones en específico tienen una curva mucho más pronunciada cuando se llega al séptimo rango, que corresponde a **"GrandMaster"**. Se puede destacar también que un diferenciador importante entre jugadores GrandMaster y los de nivel Profesional (8) es la **asignación a HotKeys**, que presumiblemente también influye en la velocidad a la hora de tomar decisiones.

> La línea amarilla representa la mediana, las barras verdes se alinean al promedio.

### Dashboard: Lo que NO hacen los PROs
![Dashboard#3](https://github.com/pbldmngz/school/blob/master/7mo/SIN/examen_segunda_evaluacion/dashboard_img/Lo%20que%20los%20pros%20NO%20hacen.png)

Es muy fácil ver solo lo que se hace, pero se consideró igual de relevante darle seguimiento a lo que los mejores jugadores de StarCraft **no hacen**, o al menos, hacen en menor medida. Se podría decir, tomando las gráficas más destacables, **"Entrenar unidades complejas"** y **"usar habilidades complejas"**, que la élite de este juego no malgasta recursos, hasta un punto en el que solo viéndo el progreso que hace según los rangos, parecerían jugadores de mucho menor nivel. Si se debe sacar alguna conclusión al respecto con este trabajo es que los jugadores profesionales parecen usar más selectivamente estas dos acciones, algo que jugadores de nivel GrandMaster quizás deberían tomar en cuenta.

## Modelo predictivo en R
Se pretende crear un modelo de regresión lineal simple usando las variables más importantes de los dashboards, LeagueIndex (el rango/liga del jugador) y APM (actions per minute). Como se vió anteriormente, a mayor el nivel del jugador, mayor la cantidad de acciones que es capaz de realizar.

Para comenzar se cambió de directorio y se importó el archivo.
```r 
setwd("C:/TuDirectorio)
lin.reg = read.csv("SkillCraft1_Dataset.csv")
```

> De querer hacerlo se puede ver la estructura usando `str(lin.reg)`, se obtendría algo como esto:
```r 
'data.frame':	3395 obs. of  20 variables:
 $ GameID              : int  52 55 56 57 58 60 61 72 77 81 ...
 $ LeagueIndex         : int  5 5 4 3 3 2 1 7 4 4 ...
 $ Age                 : chr  "27" "23" "30" "19" ...
 $ HoursPerWeek        : chr  "10" "10" "10" "20" ...
 $ TotalHours          : chr  "3000" "5000" "200" "400" ...
 $ APM                 : num  144 129 70 108 123 ...
 $ SelectByHotkeys     : num  0.00352 0.0033 0.0011 0.00103 0.00114 ...
 $ AssignToHotkeys     : num  0.00022 0.000259 0.000336 0.000213 0.000327 ...
 $ UniqueHotkeys       : int  7 4 4 1 2 2 6 6 2 8 ...
 $ MinimapAttacks      : num  1.10e-04 2.94e-04 2.94e-04 5.33e-05 0.00 ...
 $ MinimapRightClicks  : num  0.000392 0.000432 0.000461 0.000543 0.001329 ...
 $ NumberOfPACs        : num  0.00485 0.00431 0.00293 0.00378 0.00237 ...
 $ GapBetweenPACs      : num  32.7 32.9 44.6 29.2 22.7 ...
 $ ActionLatency       : num  40.9 42.3 75.4 53.7 62.1 ...
 $ ActionsInPAC        : num  4.75 4.84 4.04 4.92 9.37 ...
 $ TotalMapExplored    : int  28 22 22 19 15 16 15 45 29 27 ...
 $ WorkersMade         : num  0.001397 0.001193 0.000745 0.000426 0.001174 ...
 $ UniqueUnitsMade     : int  6 5 6 7 4 6 5 9 7 6 ...
 $ ComplexUnitsMade    : num  0 0 0 0 0 ...
 $ ComplexAbilitiesUsed: num  0.00 2.08e-04 1.89e-04 3.84e-04 1.93e-05 ...
```

Se utiliza **lm()** para crear un modelo de regresión lineal. Se crean considerando sus respectivas variables, en este caso la variable dependiente corresponde a LeagueIndex y la única independiente que se usará, a APM.
```r 
modelo.reg.lin.0 = lm(lin.reg$LeagueIndex ~ lin.reg$APM)
```

Se utiliza **summary()** para conocer los coeficientes de las variables del modelo y su nivel de significancia.
```r
summary(modelo.reg.lin.0)
```

Obteniendo un resultado como este:
```r
Call:
lm(formula = lin.reg$LeagueIndex ~ lin.reg$APM)

Residuals:
    Min      1Q  Median      3Q     Max 
-4.2657 -0.7979  0.0523  0.8314  3.2482 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) 1.9196917  0.0481111   39.90   <2e-16 ***
lin.reg$APM 0.0193461  0.0003757   51.49   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.137 on 3393 degrees of freedom
Multiple R-squared:  0.4387,	Adjusted R-squared:  0.4385 
F-statistic:  2651 on 1 and 3393 DF,  p-value: < 2.2e-16
```

Se utiliza **predict()** para predecir los valores del modelo y con esto también una operaciones con el objetivo de obtener el valor del desempeño del modelo.
```r
predicciones0 = predict(modelo.reg.lin.0)

SSE0 = sum((lin.reg$LeagueIndex - predicciones0) ^ 2)
SST = sum((lin.reg$LeagueIndex - mean(lin.reg$LeagueIndex)) ^ 2)
r2.0 = 1 - SSE0/SST

SSE0
SST
r2.0
```

Obteniendo un resultado tal que así, donde lo relevante es saber que el desempeño de este modelo es de un 43%, lo cual no se puede considerar como bueno.
```r
> SSE0
[1] 4386.332
> SST
[1] 7813.941
> r2.0
[1] 0.438653
```

Para terminar, se quiere mostrar gráficamente lo que se ha hecho, para ello usamos **plot()**, y para visualizar el modelo, que vendría siendo "lo esperado".
```r
plot(lin.reg$APM, lin.reg$LeagueIndex, ylab="League Index", xlab = "Actions per Minute")
abline(modelo.reg.lin.0, col="red")
```

Como se puede ver en esta gráfica, se coincide parcialmente, estos datos son difíciles de hacer encajar en el modelo debido a la gran dispersión que hay entre los datos, que vendrían a decir que, aunque si es cierto que las acciones por minuto son relevantes en función a lo bueno que es un jugador, hacer más rápido algo no significa **siempre** que se hace mejor.
![Plot](https://github.com/pbldmngz/school/blob/master/7mo/SIN/examen_segunda_evaluacion/res/3.jpg)
