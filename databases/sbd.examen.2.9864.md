# Ejercicio 1
Elaborar el procedimiento almacenado *“Rental_Bonus”*, en la base de datos sakila, para calcular un bono para los clientes de acuerdo a la cantidad de rentas realizadas durante un periodo de tiempo y presente el resultado como una lista de salida. **(25 puntos)**.

* Restricciones
    * El procedimiento almacenado deberá utilizar cursores.
    * Uso de tabla temporal para guardar el resultado y mostrarlo antes de finalizar la ejecución del procedimiento.
* Entradas
    * Fecha inicial
    * Fecha final
* Salidas
    * ID del cliente
    * Nombre del cliente
    * Apellido del cliente
    * Monto en dólares de las rentas realizadas
    * Bono correspondiente
* Reglas de negocio
    * Para cada cliente obtener la suma del monto de las rentas que ha realizado durante un periodo de tiempo específico.
    * Para cada cliente calcular el bono a otorgar con base a lo siguiente
    * Si el monto de la suma de las rentas es menor a 50 no se le otorga bono (cero dlls).
    * Si el monto de la suma de las rentas es mayor o igual a 50 pero menor a 100 se le otorga un bono correspondiente al 2.5% del monto de sus rentas.
    * Si el monto de la suma de las rentas es mayor o igual a 100 pero menor a 150 se le otorga un bono correspondiente al 5% del monto de sus rentas.
    * Si el monto de la suma de las rentas es mayor o igual a 150 pero menor a 200 se le otorga un bono correspondiente al 7.5% del monto de sus rentas.
    * Si el monto de la suma de las rentas es mayor o igual a 200 se le otorga un bono correspondiente al 10% del monto de sus rentas.
    * Por ejemplo si el cliente 1, ha realizado rentas por 123.78 dólares, le corresponde un bono del 5% del monto de sus rentas, 6.19 dólares.

```sql

```

# Ejercicio 2
Elaborar un reporte, en la base de datos sakila, de las rentas realizadas por categoría durante un intervalo de fechas específico. El reporte deberá presentar el nombre de la categoría, la sumas de rentas de esa categoría y una estimación del monto cobrado por las rentas utilizando el valor promedio de renta de las películas por categoría. **(25 puntos)**.

* Restricciones
      * El procedimiento almacenado deberá utilizar cursores.
      * Uso de tabla temporal para guardar el resultado y mostrarlo antes de finalizar la ejecución del procedimiento.
* Entradas
      * Fecha inicial
      * Fecha final
* Salidas
      * ID de la categoría
      * Nombre de la categoría
      * Suma de las rentas por categoría
      * Ingreso promedio (sumas de las rentas * valor de renta promedio por categoría)
* Reglas de negocio
      * Utilizar al menos dos procedimientos (llamada otro procedimiento).
      * Para cada categoría obtener la suma de las rentas que se han realizado durante un periodo de tiempo específico.
      * Para cada categoría calcular el valor promedio de renta con base al valor de renta de cada película en la categoría.

```sql

```

# Ejercicio 3
Escribir un procedimiento que agregue una nueva entrada a la tabla “film_category” que guarda la(s) categoría(s) a la(s) que pertenece cada película. **(15 puntos)**.

* Entradas
      * El procedimiento recibirá como parámetros el identificador de película y el nombre de la categoría.
* Salidas
      * Mensaje de éxito al registrar una nueva entrada, o mensajes de error según corresponda.
* Reglas de negocio
      * Si no existe el film correspondiente al número pasado como parámetro, se mostrará un mensaje diciendo “ El film con nº x no existe” en x debe aparecer el número de film pasado como parámetro y se abandonará el procedimiento.
      * Si no existe la categoría pasada como parámetro, se mostrará un mensaje diciendo “la categoría x no existe” donde x será el nombre de la categoría pasada como parámetro y se abandonará el procedimiento.
      * Si ya existe la entrada o fila que se pretende añadir a film_category, aparecerá un mensaje diciendo el film x ya pertenece a esa categoría. En caso contrario se procederá a dar de alta la fila en la tabla film_category.

```sql

```

# Ejercicio 4
Realizar un procedimiento en el que registre un nuevo actor en la base de datos Sakila. **(15 puntos)**.

* Entradas
      * Nombre y apellidos de un actor.
* Salidas
      * Mensaje de éxito al registrar el actor o mensaje de error si se duplica al actor.
* Reglas de negocio
      * Si se intenta registrar un actor que ya existe, el procedimiento deberá finalizar y mostrar el mensaje “el actor ya existe”. Probar el procedimiento primero con datos duplicados y después con datos válidos.

```sql

```

# Ejercicio 5
Crear un procedimiento que actualice el costo de reemplazo de las películas de una determinada categoría. **(20 puntos)**
* Restricciones
      * El procedimiento almacenado deberá utilizar cursores.
      * Uso de tabla temporal para guardar el resultado y mostrarlo antes de finalizar la ejecución del procedimiento
* Entradas
      * El nombre de la categoría
      * Porcentaje a aumentar.
* Salidas
      * Una lista con:
      * ID de la película
      * Nombre de la película
      * Costo anterior
      * Aumento
      * Costo nuevo
      * Reglas de negocio
      * El aumento será el porcentaje o el importe que se indica en los parámetros de entrada (el que sea superior).

```sql

```
