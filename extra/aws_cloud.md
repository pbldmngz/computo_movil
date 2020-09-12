# Cloud Computing
Se le llama a la asignación se recursos "on-demand" via internet.

## Características

* Recursos sobre pedido de forma prácticamente instantánea.
* Incrementar o decrementar recursos disponibles de forma rápida.
* Es posible "compartir" recursos con otras empresas para reducir los costos, o tener un servidor propio.
* Flexibilidad, es conveniente tanto para grandes o pequeñas empresas.
* Se pueden disponer de recursos en cualquier parte del mundo.
* Solamente se paga por lo que se usa.
* Infraestructura compartida significa básicamente "mayoreo", por lo que es más económica.
* Seguridad física al no tener expuestos los data centers.
* No necesitas toda la infraestructura.

## AWS Cloud Computing
### Ventajas principales

* Gran disponibilidad de recursos y herramientas.
* Zonas de disponibilidad distribuidas en todo el mundo (significa menor tiempo se carga).

### Modelo de responsabilidad compartida
Amazon Web Services se encargará de:

* **Software**: Computo, almacenamiento, base de datos, networking
* **Hardware/AWS Global Infrastructure**: Regiones, Zonas de disponibilidad, Edge-Locations

### Interfaces
#### AWS Management Console
Es la forma más fácil de usar el servicio ya que todo se maneja mediante una interfaz gráfica.
#### Command Line Interface (CLI)
Usar comandos desde la terminal.
#### Software Development Kits (SDK)
Integración mediante código.

### Modelo de servicio
#### Infraestructura como servicio (IAAS)
Permite diseñar su propia porción de la nube utilizando una configuración de red privada.
#### Plataforma como servicio (PAAS)
Los desarrolladores pueden desarrollar nuevas aplicaciones alojadas en la nube. *Ej: Google Play.*
#### Software como servicio (SAAS)
Ofrece una aplicación que puede ser distribuida y accesada pero a la que no se le pueden hacer apenas cambios. *Ej: Básicamente cualquier aplicación estilo Facebook o Netflix.*

### Usos comunes

* Migrar servicios de producción a la nube.
* Manejar Trafic burst.
* Backup y Disaster Recovery Plan
* Web hosting.
* Test environments.
* Big Data y Manipulación de datos.

### Seguridad
#### Identity and Access Management (IAM)
##### Conceptos básicos
> Autentificación es: Primero decir quien eres y luego coroborarlo mediante, por ejemplo, una clave.

> Autorización: El sistema establece a qué tienes acceso y hasta que punto.
##### Definición
Es un identificador global (funciona en cualquier región) que define el nivel de acceso a través de este "usuario".
##### Elementos principales

* **Usuario ROOT** es aquel que tiene todos los privilegios y acceso.
* **IAM User** son esencialmente usuarios genéricos con posibilidad de seguir reglas o roles.
* **Roles** son básicamente cuentas a las que no debería acceder un humano sino una función para automatizar, por ejemplo, y que cumplen un rol (hacen determinada tarea).
* **Politicas** es la forma en la que se definen los permisos de una cuenta. JSON.

> Se pueden asignar permisos a grupon enteros en vez de individualmente. Si dos permisos se contraponen, es decir, uno niega al otro, el negativo ganará.

#### EC2 - Elastic Compute Cloud
Elastic significa que la cantidad de servidores requeridos aumentará, de estar bien configurado, según la demanda.

* Solo se paga por lo que se usa.
* Global hosting.
* Gran catálogo de hardware y software.

### Product demonstration
#### EBS - Elastic Block Store

* SSD o Magnético a elegir.
* Uso personalizado de EC2.
* Replicado en las zonas de disponibilidad.
* Puedes guardar snapshots (caché).
* Fácil de encriptar.
* Almacenamiento elástico.

#### Simple Storage Service (S3)
Puedes acceder a ello 24/7, dispones de espacio ilimitado donde meter *objetos* como pares de clave:valor.

##### Usos
 
* Application Assets (imágenes y demás).
* Static Web Hosting.
* Backup & dissaster recovery

##### S3 IA
Almacenamiento para datos que se acceden poco precuentemente pero que al hacerlo se requiere una respuesta rápida.

##### S3 Glacier
Almacenamiento duradero y económico.

#### Virtual Private Cloud (VPC)
Redes privadas dentro de AWS Cloud. Funcionalidad: Aislar o exponer recursos. *Ej: Acceder por ciertos puertos o IPs.*

### Servicios integrados
#### Application Load Balancer (ALB)

* Segunda parte de Elastic Load Balancing (Distribuir la carga automáticamente entre servidores).
* Soporte a protocolos adicionales.
* Métricas desde CloudWatch.
* Registros de acceso.
* Health Checks.

ALB puede tener varios micro-servicios usando puertos diferentes, load balancer permite direccionar a la misma intancia pero diferenciar según el puerto.

#### Auto Scaling
Se asegura de que se tengan suficientes instancias de EC2 como para soportar la carga de la aplicación, sin que sobren ni falten demasiados recursos.

> Es importante hacer chequeos con CloudWatch pero este no hará auto scaling. Para eso es este servicio.

##### Componentes

* Configuración de arranque. Roles y grupos.
* Auto scaling Group. Load balancer, minimos y máximos de instancias a crear y sus capacidades.
* Auto Scaling Policy. Cuando se desplegará, como está calendarizada, sobre pedido, políticas de escalado...

##### Dynamic Auto Scaling
En base a la situación observada por el CloudWatch se asignarán más o menos recursos.

##### Trigger Auto Scaling
Se puede escalar también en base a alguna condición.

#### Route 53
Servicio de DNS de AWS. Solo se requiere el dominio y la IP.

#### RDS

> Hostear una base de datos relacional en la nube. 

Ventajas:

* Mantenimiento de servidores.
* Parches de software e instalación.
* Backups.
* Alta disponibilidad.
* Scalability bounds.
* Seguridad de la información.
* Respuesta ante fallas gracias a las Zonas de Disponibilidad.
* Read-Replicas para mejorar el rendimiento.

DB engines disponibles:

* MySQL
* Amazon Aurora
* SQL Server
* Postgre SQL
* MariaDB
* Oracle

#### Lambda
Ejecutar código a través de una acción sin depender del servidor. 

#### Amazon Simple Notification Service (SNS)
Enviar notificaciones a diferentes puntos dependiendo de las necesidades sin necesidad de configurar al servidor para ejecutarlo.

#### CloudWatch

* Recolectar métricas.
* Recolectar y monitorear accesos.
* Establecer alarmas.
* Respuesta automática a cambios.

##### Usos

* Respuesta rápida a cambios en los recursos del AWS.
* Invocar a Lambda tra ocurrir un cambio.
* Tomar una snapshot de un volumen de EBS.
* Calendarizar acciones.
Hacer acciones en un S3 Bucket.

#### AWS CloudFront
Crea en caché datos que muy probablemente sean utilizados desde cualquier lugar. Esto reduce la latencia.

#### CloudFormation
Simplifica el trabajo de crear grupos de recursos relacionados.

> Es un ejemplo de infraestructura como servicio.
