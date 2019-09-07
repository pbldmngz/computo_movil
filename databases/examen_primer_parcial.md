# EXAMEN DEL PRIMER PARCIAL
Usar la base de datos `sakila` para resolver los siguientes ejercicios.
## Ejercicio 1
Elaborar una consulta que utilice **JOIN** para mostrar el monto total registrado por cada miembro del personal en agosto de 2005.
```
select s.staff_id, sum(p.amount) as "payment"
from staff as s
join payment as p
on s.staff_id = p.staff_id
where p.payment_date between "2005-08-01 00:00:00" 
and "2005-08-31 23:59:59"
group by p.staff_id
```
## Ejercicio 2
Elaborar una consulta que muestre cada película y la cantidad de actores que se incluyen en esta.
```
select f.title, count(fa.actor_id) as "actores"
from film as f
join film_actor as fa
on fa.film_id = f.film_id
group by f.film_id
```
## Ejercicio 3
Elaborar una consulta que regrese una lista con los nombres de las películas cuyos títulos comienzan con **“ M ”** alquiladas por clientes cuyo apellido empieza con **“ B ”** y el número de veces que cada película fue alquilada por el cliente, ordenadas por apellido paterno, nombre y título.
```
select count(f.film_id) as "alquilada", f.title, 
concat(c.first_name," ", c.last_name) as nombre
from film as f
inner join inventory as i
on f.film_id = i.film_id
inner join rental as r
on i.inventory_id = r.inventory_id
inner join customer as c
on r.customer_id = c.customer_id
where f.title like "m%"
and c.last_name like "b%"
group by f.title
order by c.last_name, c.first_name, f.title
```
## Ejercicio 4
Elaborar una consulta que regrese una lista de rentas donde las películas hayan sido devueltas más de dos días después de la fecha de renta, la lista debe presentar apellido paterno del cliente, nombre del cliente, título de la película, fecha de renta, fecha de devolución y diferencia en días.
```
select concat(c.first_name, " ", c.last_name) as nombre,
f.title, date(r.rental_date), date(r.return_date), 
date(r.return_date) - date(r.rental_date) as days
from customer as c
join rental as r
on c.customer_id = r.customer_id
join inventory as i
on r.inventory_id = i.inventory_id
join film as f
on i.film_id = f.film_id
where date(r.return_date) - date(r.rental_date) > 2
```
## Ejercicio 5
Elaborar una consulta que regrese una lista con los nombres de los clientes y películas rentadas por categoría, ordenadas por el nombre del cliente y nombre de la categoría.
```
select concat(c.first_name, " ", c.last_name) as nombre,
cat.name, count(f.film_id)
from customer as c
join rental as r
on c.customer_id = r.customer_id
join inventory as i
on i.inventory_id = r.inventory_id
join film as f
on i.film_id = f.film_id
join film_category as fc
on fc.film_id = f.film_id
join category as cat
on cat.category_id = fc.category_id
group by nombre, cat.name
```
## Ejercicio 6
Elaborar una consulta que regrese la lista de clientes (nombre y apellido) que rentaron la película **“BUCKET BROTHERHOOD”**, junto con la lista de actores que participaron en la película (nombre y apellido).
```

```
