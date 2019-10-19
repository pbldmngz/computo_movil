# Práctica 4
Elaborar un procedimiento almacenado que calcule la antigüedad de un cliente de la BD SAKILA. Ingresar como parámetro de entrada el id del cliente. Regresar en una variable la antigüedad.
```sql
CREATE DEFINER=`spectra`@`%` PROCEDURE `antiguedad_cliente`(id int)
BEGIN
	select from_days(datediff(current_timestamp(), c.create_date)) as time
	from customer as c
	where c.customer_id = 3;
END
```

# Práctica 5
Crear un procedimiento almacenado que registre un nuevo empleado en la bd CURSO_SBD. El procedimiento debe recibir:

* Nombre del empleado
* Nombre del puesto
* Fecha de contratación
* Nombre del departamento

El procedimiento debe obtener en la ejecución:

* Número de empleado (el siguiente)
* Id del puesto
* Id del departamento

```sql
CREATE DEFINER=`spectra`@`%` PROCEDURE `practica_5`(e_nombre varchar(255), e_puesto varchar(255), e_fecha_contratacion date, e_departamento varchar(255))
BEGIN
	declare aux int default (select max(noEmpleado) as mx from empleado);
	insert into empleado (noEmpleado, nombre, puesto, fecha_contratacion, Comision, depto) values(
    	aux + 1, 
    	e_nombre,
    	(select IdPuesto from puesto where lower(Puesto) = lower(e_puesto)),
    	e_fecha_contratacion,
    	0.0,
    	(select IdDepto from departamento where lower(Nombre) = (e_departamento)));
END
```

# Práctica 6
Elaborar el procedimiento almacenado “rental_recipt” que genere el recibo de pago de una renta. Entradas:

* ID de cliente
* ID de renta

Salidas:

* ID de cliente
* Nombre del cliente
* Apellido del cliente
* ID de renta
* ID de película
* Título de película
* Costo

Si la combinación ID cliente y ID renta no existe, debe regresar No data para las variables tipo texto y 0 para las numéricas.

```sql

```

# Práctica 7
Usar BD Sakila. Crear el procedimiento almacenado “customer_ticket” para calcular las multas de rentas entregadas posterior a la fecha límite. Crear la tableTICKET con los siguientes campos:

```sql
create table ticket
( ticket_id int not null auto_increment,
ticket_date datetime,
customer_id int,
rental_id int,
fee float,
paid smallint,
primary key(ticket_id))
```

```sql

```
