# Práctica 2
## Ejercicio 1
Elaborar una consulta con el uso de joins, que devuelva una lista de clientes que no han realizado órdenes de compra, la lista debe presentar el id del cliente, nombre y apellido.
```sql
select c.customer_id, c.first_name, c.last_name
from customer as c
left join customerorder as co
on c.customer_id = co.customer_id
where co.customer_id is null
```

## Ejercicio 2
Elaborar una consulta que nos devuelta la cantidad de órdenes por estatus, el listado debe presentar el nombre del estatus y el conteo de órdenes para cada estatus.
```sql
select s.order_status_id, count(co.status)
from orderstatus as s
join customerorder as co
on co.status = s.order_status_id
group by co.status
```

## Ejercicio 3
Elaborar una consulta que devuelva el listado de productos enviados con método de envío "Medium Weight Shipments" y que su estatus sea completado. El listado debe contener id del producto, nombre del producto, método de envío y estatus.
```sql
select p.product_id, p.name, sm.name, os.description
from product as p
join customerorderitem as coi
on p.product_id = coi.product_id
join customerorder as co
on coi.order_id = co.order_id
join shippingmethod as sm
on sm.cost = co.shipping_price
join orderstatus as os
on os.order_status_id = co.status
where sm.name = "Medium Weight Shipments"
and os.description = "Completed"
```

## Ejercicio 4
Elaborar una consulta que presente el listado de categorías y la cantidad de productos vendidos por categoría, la lista debe presentar id de la categoría, nombre de la categoría y el conteo de productos vendidos por categoría.
```sql
select c.category_id, c.name, count(c.category_id)
from category as c
join product2category as p2c
on c.category_id = p2c.category_id
join product as p
on p.product_id = p2c.product_id
join customerorderitem as coi
on p.product_id = coi.product_id
group by c.category_id
```

## Ejercicio 5
Suponga que tiene un esquema de base de datos como el de la figura 1, diseñe una consulta con el uso de UNION join para obtener el nombre, apellido, usuario y contraseña de las tres tablas en un solo listado.
```sql
(
	select first_name, last_name, login, password
	from customerserviceemployee
)
union
(
	select first_name, last_name, login, password
	from warehouseemployee
)
union
(
	select first_name, last_name, login, password
	from customer
)
```
