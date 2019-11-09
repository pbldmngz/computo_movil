# Ejercicio 1
Elaborar el procedimiento almacenado *“Rental_Bonus”*, en la base de datos sakila, para calcular un bono para los clientes de acuerdo a la cantidad de rentas realizadas durante un periodo de tiempo y presente el resultado como una lista de salida. (25 puntos).

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
