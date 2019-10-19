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
CREATE DEFINER=`spectra`@`%` PROCEDURE `rental_recipt`(id_c int, id_r int)
BEGIN
		select c.customer_id, c.first_name,
		c.last_name, r.rental_id,
		f.film_id, f.title, p.amount
		from customer as c
		join rental as r
		on r.customer_id = c.customer_id
		join payment as p
		on r.rental_id = p.rental_id
		join inventory as i
		on i.inventory_id = r.inventory_id
		join film as f
		on f.film_id = i.film_id
		where c.customer_id = id_c ##No es necesario
		and r.rental_id = id_r;
END
```

# Práctica 7
Usar BD Sakila. Crear el procedimiento almacenado “customer_ticket” para calcular las multas de rentas entregadas posterior a la fecha límite. Crear la tableTICKET con los siguientes campos:

**update:** las instrucciones fueron cambiadas justo al acabar, no era necesario crear una tabla tan detallada

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
CREATE DEFINER=`spectra`@`%` PROCEDURE `customer_ticket`(t_date timestamp, id_r int)
BEGIN
declare c_id int default 0;
declare r_id int default 0;
declare fe int default 0.0;

select customer_id, rental_id, fee 
into c_id, r_id, fe
from (select c.customer_id as customer_id, 
	r.rental_id as rental_id, ifnull(
	(f.rental_duration + datediff(date_add(date(r.rental_date), 
	interval f.rental_duration day), r.return_date)*(-1))*f.rental_rate, 
	(f.rental_duration + datediff(date_add(date(r.rental_date), 
	interval f.rental_duration day), t_date)*(-1))*f.rental_rate) as fee
	from rental as r
	join customer as c
	on r.customer_id = c.customer_id
	join inventory as i
	on i.inventory_id = r.inventory_id
	join film as f
	on i.film_id = f.film_id
	where (r.return_date is null
	or datediff(date_add(date(r.rental_date), 
	interval f.rental_duration day), r.return_date) < 0)
	and r.rental_id = id_r) as sos;

insert into ticket values (0, t_date, c_id, r_id, fe, 0);
END
```
