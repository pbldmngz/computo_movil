# Redes y Comunicación
## Clase
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
* **Protocolo:** Declaración de como se llevará a cabo la comunicación. Para reducir la complejidad de una red, se suelen organizar como pilas de capas encimadas.
	* **Capas:** Su propósito es ofecer un servicio a capas superiores, ocultando el proceso.
	* **Complejidad de un protocolo:**
		* Número de capas
		* Nombre de las capas
		* Contenidos de las capas
		* Funciones de las capas
		* Propósitos de las capas
	* **Peers:** Entidades que abarcan las capas correspondientes en diferentes máquinas. **Utilizan protocolos para comunicarse entre sí.**
		* Procesos de software
		* Dispositivos de hardware
		* Seres humnanos
	* **Interface:** Par de capas adyacentes. Decide que operaciones y servicios podrá exponer la capa inferior a la superior
	* **Arquitectura de red:** Conjunto de capas y protocolos
	* **Protocol stack:** Lista de protocolos usados por ciertos sistemas, uno por capa
* **Cables:**
* **Cableado estructurado:** Conectar cables de forma ordenada para facilitar el mantenimiento
* **Tipos de transmisión:**
	* **Simplex:** Trafico en una sola dirección por un solo carril
	* **Half-Duplex:** Tráfico posible en ambias direcciones pero con un solo carril
	* **Full-Duplex:** Ambas direcciones, dos carriles
* **Cables más usados:**
	* Category 5e (Cat 5e)
	* Category 6 (Cat 6)
	* Fibra óptica
* **Enrutamiento:** Forma en que los datos encuantran camino hasta llegar a su destino
	* **Esquemas generales de enrutamiento:**
		* **Point to point:**
			* Conecta pares de máquinas
			* Generalmente tienen múltiples rutas
			* Cuando hay un remitente y un receptor, también se le llama *unicast*
		* **Broadcast:** Toda la red comparte el canal de comunicación
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
* **Tamaño de la red:** Redes grandes generalemente se subdividen en otras más pequeñas
	* 1m - Personal Area Network
	* 10-1000m - Local Area Network
	* 10km - Metropolitan Area Network
	* 100-1000km - Wide Area Network
	* 10,000km - the Internet
* **Congestión:** Sobrecarga de información en la red
* **Dispositivos de Hardware:** Ejemplos
	* Hub
	* Gateway
	* Router
	* Switch
	* Bridge
	* Network interface controller
	* Modem
* **Seguridad:**
	* Confidencialidad
	* Autentificación
	* Integridad
* **Overhead:** Información adicional que viaja junto a los paquetes de datos
* **Acknowledgement:** Acuse de recibo. Se regresa un aviso de que llegó la información
* **Connection-less:** El paquete lleva la ruta
* **Connection-oriented:** Traza ruta antes de mandarlo, devuelve acknowledgement
* **Topologías de red:** Representación geométrica de los nodos, su colocación
	* **Topología física:** La disposición física de los nodos
		* Anillo
		* Doble anillo
		* Estrella
		* Árbol
		* Malla
		* Bus
	* **Topología lógica:** La información fluyendo en la red
* **Comandos:**
	* ipconfig - 
	* hostname -
	* ping - 
	* tracert
	* nslookup -
	* netstat -
	* route -
	* arp -
## Presentaciones
* **TCP:** Transmision Control Protocol
	* Triple handshake
	* Header
* **FTP:** File Transfer Protocol
	* Máxima velocidad
	* Menor seguridad
* **DNS:** Domain Name System
	* Base de datos distribuida y jerárquica
	* Almacena información de nombres de dominio
* **DHSP:** Dynamic Host Configuration Protocol
	* Conjunto de reglas para dar direcciones IP y opciones de configuración a dispositivos de una red
	* Asigna dinámicamente dirección IP y otros parámetros
* **Cross-layer design:** Ignorar las reglar y comincarse con un puente a capas distantes
* **Broadcast Storm:** Inundación de emisiones por broadcast en una red
* **OSI:** Open System Interconnection
* **Capa 1 - física:** Capa que transfiere los bits
* **Capa 2 - enlace de datos:** Intercambia paquetes entre el host y la red en la que está conectado
* **Capa 3 - de red:** Manda paquetes
* **Capa 4 - de transporte:** Transporta entre las adyacentes
* **Capa 5 - sesión:**
* **Capa 6 - presentación:**
* **Capa 7 - aplicaciones:**
