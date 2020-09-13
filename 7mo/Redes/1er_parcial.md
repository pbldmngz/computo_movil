# Administración y seguridad de redes - Primer parcial
## Repaso de redes
### Nodos de red
* Son dispositivos informáticos que enrutan, originan y reciben datos
* Se identifican por direcciones de red
* Están **interconectados** si son capaces de intercambiar información
	* A un conjunto de computadoras interconectadas se le llama **red de computadoras**
### Modelos de comunicación
#### Cliente-Servidor
* La información se almacena en computadoras poderosas llamadas **servidores**
	* Un servidor puede dar servicio a gran número de clientes
* Computadoras más simples, llamadas **clientes** acceden remotamente a la información del servidor

![Modelo cliente-servidor](https://github.com/pbldmngz/school/blob/master/7mo/Redes/imagenes/cliente-servidor.jpg "Modelo cliente-servidor")

#### Peer to peer
Todas las computadoras de la red pueden comunicarse entre si, ej: **Torrent.**

### Tipos de redes
* Las redes sensoriales reciben y transmiten información sobre el estado del mundo físico
* Los nodos son muy pequeños y suelen estar integrados a otros dispositivos
	* Velocímetro
	* GPS
	* Sensores en el tanque de gasolina
	* etc...
	
#### Clasificación

|Rango|Nombre|
|---|---|
|1m|PAN|
|10-1000m|LAN|
|10km|MAN|
|100-1000km|WAN|
|10.000km|Internet/planetary|
|+|Interplanetary Network|

#### Ad hoc
* Es una red hecha a medida, inalámbrica, autónoma y temporal, que no requiere infraestructura.
* **Tipos:**
	* **MANET:** Mobile Ad hoc Network
		* Rebota paquetes entre los nodos disponibles de la red
		* **Tipos:**
			* **VANET:** Vehicular Ad hoc Network
			* **InVANET:** Inteligent Vehicular Ad hoc Network
			* **iMANET:** Internet based Mobile Ad hoc Network
	* **OPNET:** Opportunistic Network
		* **Características**
			* Los nodos son pequeños dispositivos incrustados en otros (como teléfonos móviles)
			* No requieren infraestructura
			* Se descubren y comunican de forma automática al entrar en rango
			* Debido al rango la conexión es intermitente
		* La mayoría de los protocoles de transmisión dependen de que la conexión sea constante, de lo contrario fallan
			* Se utiliza **Message Switching/Store and forward** para pausar hasta que se reanude la conexión
			* Las redes que utilizan este método se llaman **DTN:** Delay Tolerant Network
	* **W. Mesh Net.:** Wireless Mesh Network
	* **WSN:** Wireless Sensor Network
### Hardware de red
#### Ejemplos
* **Repetidor:** Recibe una señal débil y la potencia
* **Hub:** Permite centralizar el cableado de una red
* **Gateway:** Enlace entre dos redes con protocolos y arquitecturas diferentes
* **Router:** Permite la interconexión de dispositivos en una red
* **Switch:** Se conectan dispositivos de red para formar una LAN por ethernet
* **Bridge:** Conectan varias redes
* **Network Interface Controller (NIC):** Tarjeta de Red
* **Modem:** Convierte señales digitales en analógicas para permitir la interacción entre computadoras por línea telefónica o cablemodem

#### Medios de transmisión
##### Medio
* **Guiado:** 
	* Medios magnéticos
	* Par trenzado
	* Cable coaxial
	* Linea eléctrica
	* Fibra óptica
* **No guiado:**
	* Espectro electromagnético
	* Radio
	* Microondas
	* Infrarojo
	* Luz
##### Modo
* **Simplex:** Permiten el tráfico en una sola dirección
* **Half-duplex:** Permiten el tráfico en ambas direcciones pero no a la vez
* **Full-duplex:** Permiten el tráfico en ambos sentidos simultáneamente
