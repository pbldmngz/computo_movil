# Práctica 13
Implementar un trigger BEFORE que registre un retiro de una cuenta y actualice la tabla cuenta restando el retiro realizado.

Reglas de negocio:
* La cuenta debe quedar min con 20$ después del retiro
* La cuenta debe tener tener 10$ adicionales para la comisión.
* Si la cantidad a retirara es mayor al saldo no se debe registrar el retiro.

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

```sql

```
