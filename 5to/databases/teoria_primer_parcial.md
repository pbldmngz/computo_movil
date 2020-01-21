# Teoría del primer parcial
## Contenido

## Sistemas cliente-servidor
### Computación cliente-servidor
**Cliente/Servidor** es un término usado para describir un model de computación para el desarrollo de sistemas computacionales. Este modelo se basa en la **distribución de funciones** en dos tipos de procesos independientes y autónomos: servidores y clientes.

> Los procesos cliente y servidor pueden residir en la misma computadora o en varias conectadas a una misma red.

Un **cliente** es un proceso que solicita servicios específicos a los procesos de un servidor. El **servidor** proporciona los servicios solicitados por el cliente.

Cuando los procesos cliente y servidor residen en dos o más computadoras independientes en una red, el servidor puede proporcionar servicios a más de un cliente. Además, un cliente puede solicitar servicios a varios servidores en la red sin importar la ubicación y las características físicas de la computadora en la que reside el servidor.

### Evolución de los sitemas cliente-servidor
1. Procesamiento centralizado. Terminales no inteligentes
2. Computadoras personales autónomas
3. Terminales inteligentes. Descarga electrónica. Procesamiento instantáneo
4. Redes de área local. Acceso a datos por demanda. Acceso de lectura/escritura distribuido

La arquitectura cliente/servidor se basa en componentes de hardware y software que interactúan para formar un sistema. Este sistema incluye tres componentes principales:

|Nombre|Descripción|
|:--------|:----------|
|*Cliente*|Cualquier computadora que solicita acceso al servidor. También se conoce como aplicación frontal.|
|*Servidor*|Cualquier proceso que proporciona servicios a los clientes. También se conoce como aplicación dorsal.|
|*Middleware de comunicaciones*|Cualquier proceso mediante el cual clientes y servidores se comunican.|

#### Interacción de componentes

|**Proceso cliente**|
|:--------:|
|SQL --> <br> <-- Datos|
|**Red de middleware de comunicaciones**|
|SQL --> <br> <-- Datos|
|**Servidor de base de datos**|

## El rol del administrador de la base de datos
La persona responsable del control de las bases de datos es el **DBA** (administrador de bases de datos). Si se coloca al DBA en una posición de asesoría, el DBA es capaz de idear la estrategia de administración de datos, pero no tiene autoridad para aplicarla o resolver posibles conflictos. En una posición lineal, el DBA tiene tanto la responsabilidad como la autoridad para planear, ejecutar y aplicar las políticas, estándares y procedimientos en la actividad de administración de datos.

### Actividades del administrador de bases de datos
* Planificación de la base de datos, incluída la definición de estándares, procedimientos y ejecución
* Recolección de requerimientos y diseño conceptual de la base de datos
* Diseño lógico de base de datos
* Diseño físico y ejecución de base de datos
* Diseño de transacciones
* Prueba y depuración de base de datos
* Operación y mantenimiento de base de datos, incluída su instalación, conversión y migración
* Administración de usuarios
* Entremamiento y soporte de base de datos

#### Actividades y servicios del DBA
Planificacion, organización, prueba, monitoreo y suministro de:
* Soporte al usuario
* Políticas, procedimientos y normas
* Seguridad, privacidad e integridad de datos
* Respaldo y recuperación de datos
* Distribución y uso de datos

### Habilidades deseadas

|Administrativas|Técnicas|
|:--------|:--------|
|Entendimineto amplio del negocio|Amplia experiencia en procesamiento de datos|
|Habilidades de coordinación|Conocimineto del ciclo de vida del desarrollo de sistemas|
|Habilidades analíticas|Matodologías: UML, diagramas de flujo, lenguajes de programación|
|Habilidades de resolución de conflictos|Conocimineto del ciclo de vida de bases de datos|
|Habilidades de comunicación (orales y escritas)|Habilidades de modelado y diseño de base de datos: Conceptual, lógico, físico|
|Habilidades de negociación|Habilidades operativas: ejecución de base de datos, manejo de diccionarios de datos, seguridad...|
|Experiencia de 2 a 5 años en un departamento de procesamiento de datos grande||

## Definición y manipulación de datos en el DBMS
Un **DBMS** (Data Base Management System) consta de un conjunto de datos relacionados entre sí y un conjunto de programas para administrar esos datos. Algunos ejemplos son: Oracle, Informix, BD2, Sybase, SQL Server, PostgreSQL, MySQL, Progress

### Objetivos de un DBMS
* Minimizar la redundancia de datos
* Garantizar la consistencia de los datos
* Integridad de los datos
* Seguridad de los datos
* Controlar la concurrencia
* Proteger a los datos contra fallas del sistema
* Diccionario de datos
* Interfaz de alto nivel con los programadores

## DML
### Joins
Un **join** se usa para describir cuando dos tablas o más se unen para recuperar datos, basándose en las relaciones que dichas tablas comparten.

|Join|Definición|
|:------|:------|
|*Inner join*|Todos los registros que no coincidan son descartados. Se despliegan los sobrantes|
|*Left/Outer join*|Todos los registros del dataset B que no coincidan con el A serán mostrados como nulos. Se despliegan todos|
