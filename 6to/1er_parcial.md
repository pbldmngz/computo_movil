# Redes y Comunicación
* **Nodo de red:** 
	* Originan, enrutan y reciben datos
	* Se identidican por sus direcciones de red
	* Si es posible intercambiar datos, están conectados
* **Sistema distribuido:**
	* El conjunto de computadoras se ve como una sola
	* Construído sobre una red
* **Red de computadoras:** 
	* **Características:**
		* Nodos (computadoras autónomas) compartiendo e intercambiando recursos (datos)
		* Una única tecnología conectando multiples computadoras
		* Cada computadora colabora de forma autónoma
		* Se pueden reconocer las características individuales de cada máquina
		* **Se diferencian por:**
			* Medios de transmisión
			* Protocolos
			* Tamaño
			* Topología
			* Intención
	* **DTN:** Delay Tolerant Network
		* **Ad Hoc:** Red sobre demanda/ cuando es necesaria. "For this"/"For this situation"
			* **Características:**
				* Comunicación síncrona
				* Ruteo en tiempo real
				* Todos los nodos deben contribuir
				* Los nodos conocen (parcialmente) la topología
				* Está en la capa de red
				* Los nodos están al tanto de cuando un nodo sale de la red
				* Comunicaciones de multiples saltos (entre nodos)
				* Cada nodo y mensaje será identificado en la red
			* **Tipos:**
				* **MANET:** Mobile Ad Hoc Network. Dispositivos móviles que se conectan entre sí temporalmente
				* **VANET:** Vehicular Ad Hoc Network
				* **INVANET:** Inteligent Vehicular Ad Hoc Network
				* **IMANET:** Internet Based Mobile Ad Hoc Network
		* **OPNET:** Red Oportinista
			* Comunicación asíncrona
			* Diseminación de la información
			* No necesariamente todos los nodos deben contribuir
			* Está en la capa de aplicación
			* Cada nodo está informado solamente de los nodos que están dentro de su rango de comunicación directa
			* Comunicaciones por contacto directo
			* Individuos generalmente anónimos
> La red más conocida es internet.
* **Protocolo:** Declaración de como se llevará a cabo la comunicación.
	* **Complejidad de un protocolo:**
		* Número de capas
		* Nombre de las capas
		* Contenidos de las capas
		* Funciones de las capas
		* Propósitos de las capas
	* **Peers:** Entidades que abarcan las capas correspondientes en diferentes máquinas. *Utilizan protocolos para comunicarse entre sí.*
		* Procesos de software
		* Dispositivos de hardware
		* Seres humnanos
	* **Interface:** Par de capas adyacentes
	* **Arquitectura de red:** Conjunto de capas y protocolos
	* **Protocol stack:** Lista de protocolos usados por ciertos sistemas, uno por capa
* **Cableado estructurado:** Conectar cables de forma ordenada para facilitar el mantenimiento
* **Cables más usados:**
	* Category 5e (Cat 5e)
	* Category 6 (Cat 6)
	* Fibra óptica
* **Enrutamiento:** Forma en que los datos encuantran camino hasta llegar a su destino
	* **Esquemas generales de enrutamiento:**
		* **Unicast:** A un nodo específico
		* **Multicast:** A un grupo de nodos
		* **Broadcast:** A todos en la red
		* **Anycast:** A uno de un grupo
		* **Geocast:** A un grupo por localización geográfica
* **Tomar en cuenta al diseñar una red:**
	* **Reliability:** Los paquetes de información viajan sin excesivas pérdidas
	* Evolución de la red
	* Asignación de recursos
	* Seguridad de la red
* **Congestión:** Sobrecarga de información en la red
* **Seguridad:**
	* Confidencialidad
	* Autentificación
	* Integridad
* **Overhead:** Información adicional que viaja junto a los paquetes de datos
* **Acknowledgement:** Acuse de recibo. Se regresa un aviso de que llegó la información
* **Connection-less:** 
	* Por un puerto u otro, almacena los datos y luego los envía.
	* Genera overhead
	* Es más lenta
* **Connection-oriented:** Velocidad sobre consistencia
