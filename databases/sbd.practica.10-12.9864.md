# Práctica 10

Elaborar un procedimiento almacenado con el uso de cursor y handler que
muestre la lista de películas rentadas y la cantidad de veces que ha sido rentada
cada película dentro de un intervalo de fechas.

Entradas:

* Fecha1
* Fecha 2

Salidas:

* ID de la película
* Título
* Cantidad de veces rentada

# Versión 1

Se veía mejor que usar cursores y es funcional.

```sql
CREATE DEFINER=`spectra`@`%` PROCEDURE `practica_10`(antes timestamp,despues timestamp)
BEGIN
	declare continue handler for not found select 'Row no exists';

	select f.film_id, f.title, count(f.film_id)
	from rental as r
	join inventory as i 
	on i.inventory_id = r.inventory_id
	join film as f
	on f.film_id = i.film_id
	where r.rental_date between antes and despues
	group by f.film_id
	order by count(f.film_id) desc;
END
```

# Versión 2

Abre una tabla para cada película (sino pues para que usamos **cursores**).

```sql
CREATE DEFINER=`spectra`@`%` PROCEDURE `practica_10`(antes timestamp,despues timestamp)
BEGIN
declare done int default 0;
declare rent int default 0;
declare cata int default 0;

declare base cursor for
	select count(f.film_id)
    from rental as r
	join inventory as i 
    on i.inventory_id = r.inventory_id
	join film as f
    on f.film_id = i.film_id
	where r.rental_date between antes and despues
    group by f.film_id;

declare cat cursor for
	select film_id from film;
    
declare continue handler for SQLSTATE '02000' set done = 1;

open base;
open cat;
repeat
	fetch base into rent;
    fetch cat into cata;
	select f.film_id as "ID", f.title as "Titulo", rent as "Rentas" 
    from film as f 
	join inventory as i
    on i.film_id = f.film_id
    where f.film_id = cata
	group by f.film_id, f.title
	order by rent;   
until done end repeat;
close base;
close cat;
END
```

# Práctica 11
## Customer_Ticket
*Ya que la tabla de customer ticket no tiene apenas datos, hice un relleno automático antes de empezar con el ejercicio.*

```sql
CREATE DEFINER=`spectra`@`%` PROCEDURE `customer_ticket`()
BEGIN
declare c_id int default 0;
declare r_id int default 0;
declare fe int default 0.0;

declare done int default 0;
declare count int default 0;

declare continue handler for SQLSTATE '02000' set done = 1;

drop temporary table if exists mart;
create temporary table if not exists mart as
	select customer_id, rental_id, fee
	from (select c.customer_id as customer_id, 
	r.rental_id as rental_id, ifnull(
	(datediff(date_add(date(r.rental_date), 
	interval f.rental_duration day), r.return_date)*(-1))*f.rental_rate, "no hay adeudo") as fee
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
    order by r.rental_id) as sos;
    
    while count < (
    select count(customer_id) from mart
    ) do
	select * into c_id, r_id, fe
        from mart 
        where rental_id = count;
	
	insert into ticket values (0, current_timestamp(), c_id, r_id, fe, 0);
        set count = count + 1;
    end while;
END
```

## Práctica
Elaborar un procedimiento almacenado con uso de cursores que muestre el monto que han gastado los clientes en rentas y multas.

Entradas:
* Ninguna

Salidas (tabla temporal):
* ID del cliente
* Nombre del cliente
* Apellido del cliente
* Rentas (monto)
* Multas (monto)

Reglas de negocio:
* Para obtener la información de multas usar la tabla customer_ticket que se creó en clase para registrar multas.

```sql
CREATE DEFINER=`spectra`@`%` PROCEDURE `practica_11`()
BEGIN
	drop temporary table if exists p11;
	create temporary table if not exists p11 as
	select c.customer_id, c.first_name, 
	c.last_name, sum(amount), t.fee
	from customer as c
	join rental as r
	on r.customer_id = c.customer_id
	join payment as p
	on p.rental_id = r.rental_id
	join (select sum(fee) as fee, customer_id
	from ticket group by customer_id) as t
	on t.customer_id = c.customer_id
	group by c.customer_id;

	select * from p11;
END
```

# Práctica 12
Elaborar un SP que calcule el monto total de una venta de los artículos registrados en la tabla customerorderitem, de la BD curso_sbd para una venta dada.

Entradas:
* ID orden
* Costo (tipo OUT)

Salidas:
* Costo redondeado a dos decimales

Reglas de negocio:
* El procedimiento debe obtener el valor total de una venta considerando el valor de la suma del precio
de todos los artículos multiplicados por la cantidad comprada.
* El procedimiento debe considerar el costo de envío (shipping_price de la tabla customerorder)

```sql

```
