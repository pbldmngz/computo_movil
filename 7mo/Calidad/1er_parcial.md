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
					* Específico para compras, desarrollos/proyectos...
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
	* Actividades de revisión:
		* **Técnicas/tipos de revisión y pruebas:** Enfocadas a la detección de errores y defectos más que calidad
			* **Revisiones de gestión:** Controlar el progreso y detectar inconsistencias de los planes con la programación y requisitos
			* **Revisiones técnicas:** Revisar documentación producida a lo largo del proyecto
			* **Inspecciones:** Revisiones que involucran al autor del producto
			* **Walkthrough:** Inspecciones conducidas únicamente por miembros del equipo de desarrollo, que examina una parte del producto
			* **Auditorías:** Evaluaciones independientes sobre el cumplimiento de planes, estándares, procedimientos...
		* **En cualquier revisión se pretente:**
			* Señalar la necesidad de mejorar el producto
			* Confirmar las partes del producto que no es necesario mejorar
			* Conseguir un trabajo técnico de una calidad más uniforme
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
### Métricas
Una métrica es una asignación de *valor* a un atributo, ya sea tiempo, complejidad, etc... de un producto o proceso.
>Para la evaluación de calidad es más habitual centrarse en las métricas del producto que las del proceso

Para evaluar las características del software se utilizan métricas, **EJEMPLOS:**
* Métricas basadas en atributos internos del producto:
	* Medidas de estructuración de un programa
	* Métricas de complejidad
	* Métricas de cobertura de pruebas
	* Métricas de calidad de diseño
* Métricas basadas en atributos externos del producto:
	* Métricas de portabilidad
	* Métricas de defectos
	* Métricas de usabilidad
	* Métricas de mantenibilidad
	* Métricas de fiabilidad
* Métricas basadas en código fuente:
	* Total de líneas de código
	* Total de líneas de comentarios
	* Total de instrucciones
	* Densidad de la documentación
* Métricas para sistemas orientados a objetos:
	* Acoplamiento
	* Herencia
	* Cohesión
* Métricas basadas en estructura de diseño:
	* Relacionas con el control intramodular
	* Relacionadas con el acoplamiento entre clases
### Proceso de mejora del software
1. Revisar el enfoque de la organización
2. Documentar y analizar las lecciones
3. Definir los procesos y las medidas
4. Planificar y realizar procesos piloto
5. Planificar, ejecutar y seguir la intalación
6. Establecer equipos de acción
7. Planificar las acciones
8. Establecer estrategias y prioridades
9. Desarrollar documentaciones y documentar los resultados
10. Evaluar la práctica actual
11. Estímulo para mejora
12. Establecer contexto y patrocinador
13 Establecer infraestructura de mejora

> Creo que esto es un ciclo pero no me cuadran los detalles, hacen referencia a esta imagen
![Ejemplo](https://github.com/pbldmngz/school/blob/master/7mo/Calidad/imagenes/proceso_mejora_software.jpg "Ejemplo que soy demasiado cuadrado para entender")

#### Fiabilidad
* No hay fallos durante la ejecución durante un tiempo y ambientes determinados.
* Los fallos se pueden producir por:
	* Defectos en el código
	* En el diseño
	* En el análisis
	* Durante el mantenimiento

##### Tipos de fallo
| Tipo de fallo | Descripción |
| ------------- |-------------|
| Transitorio | Ocurre solo con ciertas entradas |
| Permanente | Ocurre con todas las entradas |
| Recuperable | El sistema se recupera sin intervención |
| Recuperable II | Se requiere intervención para recuperarlo |
| No corruptor | No corrompe el estado del sistema de datos |
| Corruptor | Corrompe el estado del sistema de datos |

Factores que hacen que las pruebas no garanticen la fiabilidad:
* La especificación puede no reflejar los requerimientos del usuario
* Las pruebas pueden contener errores
* Las pruebas pueden contener patrones de uso incorrectos

### Modelos de desarrollo
Se selecciona una metodología de desarrollo de ingeniería en software según:
* La naturaleza del proyecto y aplicación
* Los métodos y las herramientas a utilizar
* Los controles y entregas que se requieren

##### Modelos vistos:
Línea secuencial:

![Modelo de línea secuencial](https://github.com/pbldmngz/school/blob/master/7mo/Calidad/imagenes/modelo_linea_secuencial.jpg "Modelo de línea secuencial")

Construcción de prototipos:

![Modelo de construcción de prototipos](https://github.com/pbldmngz/school/blob/master/7mo/Calidad/imagenes/modelo_construccion_prototipos.jpg "Modelo de construcción de prototipos")

## MoProSoft - Modelo de procesos para la industria del software
### Introducción
#### Propósito:
* Estandarización
* Calidad en los servicios
* Nivel de competitividad internacional
#### Requerimientos:
* Fácil de entender
* Fácil de aplicar
* No costoso en su adopción
* Alcanzar evaluaciones exitosas con otros modelos
#### Alcance:
* Empresas dedicasdas al desarrollo/mantenimiento de software
* Enfoque basado en procesos
#### Estructura del modelo de procesos:
Enfoque basado en procesos
* **Categoría de alta dirección (DIR):** 
	* Gestión del negocio
	* Razón de ser de la organización
	* Sus objetivos y condiciones para lograrlos
* **Categoría de gestión (GES):**
	* Gestión de procesos, proyectos y recursos
	* Necesidades de los clientes
	* Evaluar los resultados
	* Mejora contínua
* **Categoría de operación (OPE):**
	* Proyectos de desarrollo y mantenimiento de software
##### Roles
* **Cliente:** Es el que solicita un producto de software y financia el proyecto
* **Usuario:** Es el que va a usar dicho software
* **Grupo directivo:** Son los que dirigen una organización y son responsables de su funcionamiento exitoso
* **Responsable del proceso:** Es el encargado de la realización de prácticas de un proceso y del cumplimiento de sus objetivos
* **Involucrado:** Otros roles con habilidades requeridas para la ejecución de actividades o tares específicas.
	* Analista
	* Programador
	* Revisor
	* etc...
##### Producto de software
Es el producto que se genera en el procesos de desarrollo y mantenimiento de software.

Se clasifican como:
* Especificación de requerimientos
* Análisis y diseño
* Software
* Prueba
* Registro de rastreo y manual

##### Configuración del software
Es un conjunto consistente de productos de software.

* **Plan:** Programa detallado de las actividades, responsables de realizarlas y calendario
* **Reporte:** Informe del resultado de las actividades realizadas
* **Registro:** Evidencia de actividades desempeñadas
* **Lección aprendida:** Experiencia positiva o negativa obtenida durante la realización de alguna actividad
* **Otro producto:** Contrato, propuestas tecnológicas, documentación, etc...

### Definición
* **Patrón de procesos (documentación):**
	* Definición general
	* Prácticas
	* Guías de ajuste
* **Definición general de proceso:**
	* Nombre
	* Categoría
	* Objetivos medibles y resultados esperados
	* Descripción de actividades y productos
	* Objetivos específicos
	* Indicadores (cumplimiento de objetivos)
	* Metas cuantitativas
	* Responsabilidad es el rol principal responsable
	* Autoridad es el rol responsable de validar la ejecución del proceso
	* Procesos relacionados
	* Entradas (nombre y referecia de origen)
	* Salidas (nombre, descripción y origen)
	* Productos internos (nombre y descripción)
* **Prácticas:**
	* Roles involucrados
	* Capacitación
	* Actividades (se asocian a los objetivos y describen tareas y roles responsables)
	* Diagrama de flujo de trabajo
	* Verificaciones y validaciones (internas y externas)
	* Incorporación a la base de conocimientos
	* Recursos de infraestructura (asocia actividad y recurso)
	* Mediciones para evaluar los indicadores del proceso
	* Capacitación
	* Manejo de situaciones excepcionales
	* Lecciones aprendidas duranta el proceso
* **Guías de ajuste**
	* Descripción de posible modificaciones al proceso que no deben afrectar sus objetivos
	* Uso del patrón, el patrón de procesos fue utilizado como esquema para documentar los procesos de MoProSoft
