# Práctica 13
Implementar un trigger BEFORE que registre un retiro de una cuenta y actualice la tabla cuenta restando el retiro realizado.

Reglas de negocio:
* La cuenta debe quedar min con 20$ después del retiro
* La cuenta debe tener tener 10$ adicionales para la comisión.
* Si la cantidad a retirara es mayor al saldo no se debe registrar el retiro.

Se usa `SIGNAL sqlstate '45001' set message_text = "exit message"` para escribir un custom message bajo alguna condición.

```sql
Drop table if exists cuenta;
CREATE TABLE cuenta(
numero_cuenta int PRIMARY KEY ,
saldo float
);
INSERT INTO cuenta VALUES(1, 100);
INSERT INTO cuenta VALUES(2, 200);

Drop table if exists retiro;
CREATE TABLE retiro(
numero_retiro int PRIMARY KEY
AUTO_INCREMENT,
fecha_retiro datetime,
cuenta int,
retiro float,
Comsion float,
foreign key (cuenta) REFERENCES
cuenta (numero_cuenta)
);
```

**Respuesta:**

```sql
CREATE DEFINER=`spectra`@`%` TRIGGER `retiro_BEFORE_INSERT` BEFORE INSERT ON `retiro` FOR EACH ROW BEGIN
	declare s int default (select saldo from cuenta where numero_cuenta = new.cuenta) - 10;
   	if (s - new.retiro) <= 20 then SIGNAL sqlstate '45001' set message_text = "no se puede realizar el retiro";
    	else update cuenta set saldo = saldo - new.retiro where numero_cuenta = new.cuenta;
    	end if;
END
```

# Práctica 14
Crear un trigger para insertar la información de una multa en la tabla ticket si la fecha de entrega de la película excede los días límite para regresarla.

Reglas de negocio:
* Al registrar la fecha de entrega de la película en la tabla rental obtener la diferencia de la fecha de entrega contra la fecha de renta.
* Si el total de días transcurridos es mayor a los días límite crear un registro de multa multiplicando los días excedidos por 0.5.

```sql

```

# Práctica 15
Implementar un trigger que actualice el sueldo de los empleados por cada proyecto, cuando se actualice la antigüedad de este en la tabla empleado de la base de datos Empresa.

Reglas de negocio:
* Para cada empleado obtener el factor de compensación de acuerdo a la nueva antigüedad.
* El aumento se calculará multiplicando el factor de compensación * el sueldo anterior dividido entre 100.
* Al sueldo anterior sumarle el aumento y actualizarlo en la tabla trabaja_en.

```sql

```
