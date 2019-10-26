# Práctica 8
Crear un procedimiento almacenado que cuente la cantidad de rentas en las que ha participado cada miembro del Staff en un intervalo de fechas en particular.

Entradas:

* Fecha inicial
* Fecha final

Salidas:

* Rentas del staff1
* Rentas del staff2

```sql
CREATE DEFINER=`spectra`@`%` PROCEDURE `p8`(dateA timestamp, dateB timestamp)
BEGIN
	declare temp int default 0;
    declare totalA int default 0;
    declare totalB int default 0;
    declare done int default 0;
    
    declare basic cursor for
    select staff_id from rental;
    
    declare continue handler for SQLSTATE '02000' set done = 1;
    
    open basic;
    
    repeat
		fetch basic into temp;
        if temp = 1 then
			set totalA = totalA + 1;
		else
			set totalB = totalB + 1;
		end if;
    until done end repeat;
    
    select totalA, totalB;
    close basic;
END
```

# Práctica 9
* Hacer una copia de la tabla rental.
* Elaborar un procedimiento almacenado con el uso de cursores que elimine de la tabla rental todas las rentas que el valor de la película sea menor a dos dólares y el costo de reemplazo sea mayor a 20 dólares.

```sql

```
