# Práctica 8
Crear un procedimiento almacenado que cuente la cantidad de rentas en las que ha participado cada miembro del Staff en un intervalo de fechas en particular.

Entradas:

* Fecha inicial
* Fecha final

Salidas:

* Rentas del staff1
* Rentas del staff2

```sql
CREATE DEFINER=`spectra`@`%` PROCEDURE `practica_81`(antes timestamp, despues timestamp)
BEGIN
	declare r int default 0;
    declare done int default 0;
    declare cuentas cursor for
    select count(r.rental_id)
	from rental as r
	where r.rental_date between antes and despues
	group by r.staff_id;
    declare continue handler for SQLSTATE '02000' set done = 1;
    
    open cuentas;
    
    repeat
    fetch cuentas into r;
    select r;
    until done end repeat;
    
    close cuentas;
END
```

# Práctica 9
h
```sql

```
