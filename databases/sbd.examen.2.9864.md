# Ejercicio 1
Elaborar el procedimiento almacenado *“Rental_Bonus”*, en la base de datos sakila, para calcular un bono
para los clientes de acuerdo a la cantidad de rentas realizadas durante un periodo de tiempo y presente el
resultado como una lista de salida. (25 puntos).

1.1 Restricciones
1.1.1 El procedimiento almacenado deberá utilizar cursores.
1.1.2 Uso de tabla temporal para guardar el resultado y mostrarlo antes de finalizar la ejecución del
procedimiento.
1.2 Entradas
1.2.1 Fecha inicial
1.2.2 Fecha final
1.3 Salidas
1.3.1 ID del cliente
1.3.2 Nombre del cliente
1.3.3 Apellido del cliente
1.3.4 Monto en dólares de las rentas realizadas
1.3.5 Bono correspondiente
1.4 Reglas de negocio
1.4.1 Para cada cliente obtener la suma del monto de las rentas que ha realizado durante un
periodo de tiempo específico.
1.4.2 Para cada cliente calcular el bono a otorgar con base a lo siguiente
1.4.2.1 Si el monto de la suma de las rentas es menor a 50 no se le otorga bono (cero dlls).
1.4.2.2 Si el monto de la suma de las rentas es mayor o igual a 50 pero menor a 100 se le
otorga un bono correspondiente al 2.5% del monto de sus rentas.
1.4.2.3 Si el monto de la suma de las rentas es mayor o igual a 100 pero menor a 150 se le
otorga un bono correspondiente al 5% del monto de sus rentas.
1.4.2.4 Si el monto de la suma de las rentas es mayor o igual a 150 pero menor a 200 se le
otorga un bono correspondiente al 7.5% del monto de sus rentas.
1.4.2.5 Si el monto de la suma de las rentas es mayor o igual a 200 se le otorga un bono
correspondiente al 10% del monto de sus rentas.
1.4.2.6 Por ejemplo si el cliente 1, ha realizado rentas por 123.78 dólares, le corresponde un
bono del 5% del monto de sus rentas, 6.19 dólares.

```sql

```
