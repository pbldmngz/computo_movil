# Práctica 3
## Ejercicio 1
Use JOIN to display the first and last names, as well as the address, of each staff member. 
```sql
select concat(s.first_name, " ", s.last_name) as name, 
concat(a.address,", ", city, ", ", country) as address
from staff as s
join address as a
on a.address_id = s.address_id
join city as c
on c.city_id = a.city_id
join country as co
on co.country_id = c.country_id
```

## Ejercicio 2
Using the JOIN command, list the total paid by each customer.
```sql
select concat(c.first_name, " ", c.last_name) as name, sum(p.amount)
from payment as p
join customer as c
on c.customer_id = p.customer_id
group by p.customer_id
order by sum(p.amount) desc
```

## Ejercicio 3
The music of Queen and Kris Kristofferson have seen an unlikely resurgence. As an unintended consequence, films starting with the letters K and Q have also soared in popularity. Use subqueries to display the titles of movies starting with the letters K and Q whose language is English.
```sql
select f.title
from film as f
join language as l
on l.language_id = f.language_id
where (f.title like "k%" or f.title like "q%")
and l.name = "English"
```

## Ejercicio 4
Use subqueries to display all actors who appear in the film Alone Trip.
```sql
select f.title, concat(a.first_name, " ", last_name) as "actor name"
from film as f
join film_actor as fa
on f.film_id = fa.film_id
join actor as a
on a.actor_id = fa.actor_id
where f.title = "Alone Trip"
and fa.actor_id in (
	select actor_id
	from actor    
)
```

## Ejercicio 5
Many DVD stores produce a daily list of overdue rentals so that customers can be contacted and asked to return their overdue DVDs. To create such a list, search the rental table for films with a return date that is NULL and where the rental date is further in the past than the rental duration specified in the film table. If so, the film is overdue and we should produce the name of the film along with the customer name and phone number.
```sql
select concat(c.first_name, " ", c.last_name) as name, c.email
from rental as r
join customer as c
on r.customer_id = c.customer_id
join inventory as i
on i.inventory_id = r.inventory_id
join film as f
on i.film_id = f.film_id
where r.return_date is null
and datediff(date_add(date(r.rental_date), 
INTERVAL f.rental_duration DAY), "2006-02-18") < 0
```
