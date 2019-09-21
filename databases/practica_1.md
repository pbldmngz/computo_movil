# Práctica
## Ejercicio 1
Elaborar una consulta que devuelva el nombre concatenado de los clientes, el título de las películas rentadas, la categoría de estas y la cantidad de veces que fue rentada, para aquellas películas que hayan sido rentadas más de 30 veces. Usar una tabla derivada para obtener los ID’s de las películas con más de 30 rentas.
```sql
select concat(c.first_name, " ", c.last_name) as c_name, 
f.title, cat.name, rentas.cd
from customer as c
join (
	select f2.film_id as fl_id, count(f2.film_id) as cd
	from film as f2
	join inventory as i2
	on i2.film_id = f2.film_id
	join rental as r2
	on r2.inventory_id = i2.inventory_id
	group by fl_id
	having count(f2.film_id) > 30
) as rentas
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
where rentas.fl_id = f.film_id
order by c_name;
```
## Ejercicio 2
Elaborar una consulta que muestre una lista de películas y las veces ha que ha sido rentada, para aquellos títulos que hayan sido rentados más veces que el promedio de rentas por película.
```sql
select f.title as pelicula, count(r.rental_id) as rentas
from film as f
inner join inventory as i on f.film_id = i.film_id
inner join rental as r on i.inventory_id = r.inventory_id
group by f.title
having rentas > (
	select avg(tab1.rentas)
	from film as f
	inner join (
		select ff.film_id as idpelicula, count(r.rental_id) as rentas
        from film as ff
        inner join inventory as i on ff.film_id = i.film_id
        inner join rental as r on i.inventory_id = r.inventory_id
        group by ff.film_id
	) as tab1 on tab1.idpelicula = f.film_id
    order by rentas
)
```
