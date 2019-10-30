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
