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
* pregunta?

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

![arbol_de](https://github.com/pbldmngz/school/blob/master/7mo/SIN/practica_modelos_logisticos/arbol.png "Arbol")
