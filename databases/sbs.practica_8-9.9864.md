# Práctica 8
Elaborar un procedimiento almacenado que calcule la antigüedad de un cliente de la BD SAKILA. Ingresar como parámetro de entrada el id del cliente. Regresar en una variable la antigüedad.
```sql
CREATE DEFINER=`spectra`@`%` PROCEDURE `antiguedad_cliente`(id int)
BEGIN
	select from_days(datediff(current_timestamp(), c.create_date)) as time
	from customer as c
	where c.customer_id = 3;
END
```
