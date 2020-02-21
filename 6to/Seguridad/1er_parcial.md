# Seguridad de aplicaciones
* **Vulnerabilidad técnica:** Problema de implementación por mala programación
* **Ataque distribuido:** 
	* Ciclo de reboots al servidor
	* Consume agrsivamente todos los recursos en una sola petición
* **Buffer:** Espacio de memoria
* **CIA:** Confidencialidad Integridad Accesibilidad
* **MeltDown:** 
	* Tiempo de respuesta es usado para intuir contraseñas
	* En un for de comparación hizo 3ms para 3 ciclos, luego el tiempo cambió así que pasamos el primer if
* **Ataque de canal lateral:** Inferir datos basado en la información física del sistema
	* **Teoría:**
		* Extraer secretos del chip del sistema
		* Medición y análisis de parámetros físicos
	* **Tipos:**
		* **Invasivos:** Requiere desempaquetado del chip o acceso al interior de los componentes
		* **No invasivos:** Información externa
			* Corriente de suministro
			* Tiempo de ejecución
			* Sonidos
			* Emisión electro magnética
			* Temperatura
		* **Activos:** Inducir errores y ver el comportamiento de los resultados
		* **Pasivos:** No alteran el funcionamiento del dispositivo
* **Sandbox:** Ejecución de código en un ambiente limitado
* **Ejecución especulativa:** Especula el resultado antes de terminar una operación
* **Análisis forense digital:**
	* Investigaciones criminales
	* Litigios civiles
	* Análisis de datos
	* **Reporte técnico forense:**
		* Resumen del reporte
		* Detalles del caso
		* Contexto del caso
		* Resultados y conclusiones
	* **Antecedentes y objetivos:**
		* Hipótesis
		* Justificación
		* Tareas realizadas durante el análisis
	* **Pistas de investigación:**
		* Tareas no completadas
		* Incluye evidencias que no se pudieron analizar
	* **Conclusiones:**
		* Resumen técnico
		* Testimonio y recomendaciones del experto
* **Principio de Locard:** Cuando una persona entra/sale de una escena, esta siempre deja un rastro y/o toma posesión de algo
* **Header/Footer carving:** Obtener archivos de datos crudos usando headers y footers distintos
* **Header/Maximum (file) size carving:** Obtener archivos directamente de los datos crudos con un límite de tamaño para los archivos
* **Header/Embedded length carving:** 
	* Obtener archivos de los datos crudos
	* Headers y footers distintos
	* Tamaño de archivo definidos por el formato del archivo
* **SSD:** Solid state drive. Las posiciones en memoria no pueden ser sobreescritas si no han sido previamente eliminadas
	* **TRIM:** 
		* Ayuda al sistema operativo a conocer la locación exacta de la información a eliminar/mover
		* Cuando eliminamos un archivo, TRIM elimina el espacio en memoria que ocupaba el archivo para que pueda ser usado por el sistema operativo
* **Metadata:**
	* Información descriptiva sobre el contexto, calidad, condición o característica de un recurso, dato u objeto
	* Facilitan su posterior recuperación, autentificación...
	* **Características:**
		* Son paquetes de información altamente estructurados que describen el contenido, calidad y características de un sitio web
		*
	* **Funciones:**
		* Búsqueda
		* Recuperación
		* Revelan patrones, relaciones y comportamientos
* **Remote code execution:** De esta forma el atacante podría superar los mecanismos de defensa
	* **Ransomware:** 
		* Secuestro de información
		* Se encripta
		* **Casos notables:**
			* **Primer caso (1989):** 
				* Un biólogo repartió 20k disquetes
				* Infectaba el ordenador al ser introducidos y cifraba todos los archivos
				* Debían pagar 189 USD
			* **Archievus (2005):** 
				* Cifraba todo el contenido en mis documentos
				* Obligaba a realizar compras en páginas web determinadas para conseguir las contraseñas que desbloqueban los archivos
			* **Popcorn Time (2016):**
				* Aprovechó la popularidad de la app para introducirse en los ordenadores
				* Existía otra forma de conseguir el código de desbloqueo, infectar a otros dos usuarios
			* **WannaCry/WannaCrypt (2017):**
				* Paralizó el servicio naciona de salud de Reino Unido
* **Confidencialidad:**
	* Mantener información restringida
	* Garantizar que la información sea accedida solamente por las personas indicadas
	* La propiedad de confidencialidad debe existir en los datos en cualquiera de sus 3 estados:
		* Almacenamiento
		* Proceso
		* Tránsito
	* Pocos mecanismos pueden garantizar confidencialidad en sus tres estados
	* **Algunos mecanismos son:**
		* Autentificación
		* Controles de acceso
		* Cifrado de datos
	* **Integridad:**
		* Prevenir que alguien con permisos de modificación cometa un error y modifique datos
		* Prevenir que alguien sin permiso realice cambios
		* Prevenir que alguna app realice algún cambio no deseado
	* **Accesibilidad:**
		* Implementar soluciones redundantes
		* Esquemas de respaldo
		* Planes de recuperación de desastres
	* Si no se tiene confidencialidad, la probabilidad de que se viola la integridad de los datos aumenta
	* Si se modifica la integridad de los datos, la información o aplicaciones clave del negocio se verán afectadas y no podrán dar el servicio esperado, lo que impactaría la accesibilidad
* **Esteganografía:** Ocultar-Escritura/Símbolos. Ocultar información en imágenes

			
