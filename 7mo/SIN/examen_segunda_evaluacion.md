# Segunda evaluación - examen práctico
## Actividades
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
