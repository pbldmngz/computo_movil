# Práctica
## Ejercicio 1
Elaborar una consulta que devuelva el nombre concatenado de los clientes, el título de las películas rentadas, la categoría de estas y la cantidad de veces que fue rentada, para aquellas películas que hayan sido rentadas más de 30 veces. Usar una tabla derivada para obtener los ID’s de las películas con más de 30 rentas.
```sql
select concat(c.first_name, " ", c.last_name) as c_name, 
f.title, cat.name,
(
	select count(f2.film_id)
	from film as f2
	join inventory as i2
	on i2.film_id = f2.film_id
	join rental as r2
	on r2.inventory_id = i2.film_id
	where f2.film_id = f.film_id
) as rentas
from customer as c
join rental as r
on r.customer_id = c.customer_id
join inventory as i
on i.inventory_id = r.inventory_id
join film as f
on f.film_id = i.film_id
join film_category as fc
on fc.film_id = f.film_id
join category as cat
on cat.category_id = fc.category_id
where (
	select count(f2.film_id)
    	from film as f2
    	join inventory as i2
    	on i2.film_id = f2.film_id
    	join rental as r2
    	on r2.inventory_id = i2.film_id
    	where f2.film_id = f.film_id
) > 30
order by c_name;
```
