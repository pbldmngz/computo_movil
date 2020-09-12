# Aseguramiento de Calidad - Primer parcial
* **Métodos de la ingeniería en software:**
	* Entender dominio del problema
	* Crear diseño acorde
	* Características que lleven a dimensiones y factores de calidad
* **Técnicas de administración de proyectos:**
	* Gerente estima fechas aceptables
	* Se conoce la interconexión entre tareas
	* Planeación de riesgo
## Calidad
* **Calidad en Software:** Es el grado en que un sistema, componente o proceso cumple con:
	* Los requerimientos especificados
	* Las necesidades/expectativas del cliente/usuario
* **Calidad esperada** es: 
	* **Calidad programada** = Estimación
	* **Calidad necesaria** = **Requerimientos:**
		* **Requerimientos explícitos:** Están en el documento de especificación de requisitos del sistema.
			* **Funcionales:** Lo que el software tiene que hacer
			* **No funcionales/ Extendidos:** Requisitos de seguridad, rendimeinto...
		* **Requerimientos implícitos:** No están el el documento de especificación de requisitos del sistema.
	* **Calidad realizada** = Producto final
* **Consideraciones en calidad de software:**
	* Se desarrolla, no fabrica
	* Producto lógigo, no físico
	* No se degrada
	* Se suele entregar con defectos de forma consciente debido a su complejidad
	* Gran parte del desarrollo se hace a medida, sin usar componentes existentes
	* Flexible, los fragmentos se pueden cambiar y reutilizar
### Tópicos relacionados con la calidad:
* **Control de calidad:** Acciones que aseguran que un producto cumpla las metas de calidad. 
	* **Objetivos:**
		* Controlar un proceso
		* Eliminar causas de defectos desde un comienzo
	* **Verificación/Validación:**
		* **Verificación:** Comprobar si los productos desarrollados en cierta etapa cumplen con los requerimientos
		* **Validación:** Comprobar si el software satisface los requisitos del usuario
* **Aseguramiento de calidad:** Actividades que evalúan el proceso en el que se desarrolla un producto.
#### Gestión de calidad: Determina y aplica objetivos y directrices de calidad. 
* **Incluye:**
	* Planeación estratégica
	* Asignación de recursos
##### Sistema de gestión de calidad
###### A nivel de empresa: 
>Para implementar una infraestructura de calidad es necesario disponer de un sistema de calidad que se adecúe a los objetivos de la empresa.

* **Estuctura** que se establece para llevar a cabo la gestión:
	* Responsabilidades
	* Actividades
	* Recursos
	* Procedimientos
* **La dirección es responsable de:**
	* Fijar una política de calidad: 
		* "el cliente siempre tiene la razón"
		* "los trenes llegan con menos de 5 minutos de atraso"
	* Desiciones relativas al inicio, desarrollo, implantación y actualización de un sistema de calidad
* **Un sistema de calidad**
	* **debe:**
		* Ser eficaz
		* Comprendido por todos
		* Confiable
		* Prevenir en lugar de detectar
	* **consta de:**
		* **Documentación:** Se describen sistemas y procedimientos ajustándose a una norma.
			* **Manual de calidad:** 
				* Los elementos, requisitos y medios adoptados deben de ir por escrito, ordenadamente en forma de políticas y procedimientos
				* Se debe describir para servir de referencia al inplantar el sistema
				* En empresas grandes puere realizarse:
					* Para la totalidad de la empresa
					* Nivel departamento, producto...
					* Específicopara compras, desarrollos/proyectos...
			* **Procedimientos de calidad:** Instrucciones específicas para ciertas actividades o procesos. Se fundamentan en:
				* Buena práctica y saber hacer
				* Los códigos, normas y especificaciones a los que deben ajustarse
			* **Registros de datos sobre calidad:** Almacenamiento de información sobre actividades relacionadas con la calidad o evalucación de productos:
				* Datos de pruebas
				* Datos de revisiones
				* Inspecciones
				* Datos de costes
				* Actividades
				* etc...
		* **Parte práctica: Aspectos**
			* **Físicos:** Lugar, herramientas, computadoras...
			* **Humanos:** Formación del personal & creación y cordinación de equipos de trabajo
###### A nivel de proyecto
>A cada proyecto hay que generarle un plan específico de calidad.

* **El plan de aseguramiento debe contener:**
	* Objetivos de calidad
	* Estándares
	* Herramientas, técnicas y métodos de apoyo
	* Control del código y equipos
	* Documentación
		* Referenciada en el plan
		* De desarrollo
		* De control o gestión
	* Mantenimiento y almacenamiento de datos sobre la documentación
	* Gestión 
		* Del aseguramiento de calidad
		* De la configuración del software
	* Actividades de revisión
		* Técnicas de revisión y pruebas: Enfocadas a la detección de errores y defectos más que calidad
	* Informes de problemas
* **El aseguramiento de calidad se realiza a través de modelos:**
	* **Modelo Boehm:** 
		* Se descomponen las características en tres niveles antes de aplicar las métricas
			* Usos principales
			* Componentes intermedios
			* Componentes primitivos
		* Los componentes se centran en el producto final. 
		* Se identifican características de calidad desde el punto de vista del usuario
	* **Modelo McCall:**
		* Revisión:
			* Facilidad de recibir mantenimiento
			* Flexibilidad, fácil de modificar
			* Facilidad de someterse a pruebas
		* Operación:
			* Correción, cumple con requisitos
			* Confiabilidad
			* Eficiencia
			* Integridad, grado en el que es posible controlar el acceso no autorizado
			* Usabilidad, curva de aprendizaje
		* Transición:
			* Portabilidad, facilidad para transferir de un ambiente a otro
			* Reusabilidad
			* Interoperabilidad, acoplar un sistema a otro
	* Modelo factores/criterios/métricas
	* Modelo ISO 9126
	* Paradigma Goal-Question-Metric
	* Modelo de Gilb
	* Modelo CMM
	* [Modelo SPICE](https://docs.google.com/presentation/d/13B7L73Hbt8Ds1i7R3EpQ1KVz8R8bQEekhajfb2sMytA/edit?usp=sharing)
