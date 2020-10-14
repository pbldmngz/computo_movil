# Índice
- [Administración y seguridad de redes - Primer parcial](#administración-y-seguridad-de-redes---primer-parcial)
  * [Repaso de redes](#repaso-de-redes)
    + [Nodos de red](#nodos-de-red)
    + [Modelos de comunicación](#modelos-de-comunicación)
      - [Cliente-Servidor](#cliente-servidor)
      - [Peer to peer](#peer-to-peer)
    + [Tipos de redes](#tipos-de-redes)
      - [Clasificación](#clasificación)
      - [Topología](#topología)
      - [Ad hoc](#ad-hoc)
    + [Hardware de red](#hardware-de-red)
      - [Ejemplos](#ejemplos)
      - [Medios de transmisión](#medios-de-transmisión)
        * [Medio](#medio)
        * [Modo](#modo)
    + [Categorías estándar](#categorías-estándar)
    + [OSI vs TCP](#osi-vs-tcp)
      - [Capas del modelo TCP](#capas-del-modelo-tcp)
        * [Protocolos por capas](#protocolos-por-capas)
    + [Multiplexing, Demultiplexing y Encapsulación en implementación por capas](#multiplexing--demultiplexing-y-encapsulación-en-implementación-por-capas)
    + [Números de puerto](#números-de-puerto)
  * [Arquitectura de direcciones de internet](#arquitectura-de-direcciones-de-internet)
    + [IPv4](#ipv4)
    + [IPv6](#ipv6)
    + [Basic IP Address Structure](#basic-ip-address-structure)
      - [Classful addressing](#classful-addressing)
      - [Subnet addressing](#subnet-addressing)
        * [Variable-Length Subnet Masks](#variable-length-subnet-masks)

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
	
#### Clasificación

|Rango|Nombre|
|---|---|
|-|WBAN|
|1 m|PAN|
|10-1000 m|LAN|
|10 km|MAN|
|100-1000 km|WAN|
|10.000 km|Internet/planetary|
|+|Interplanetary Network|

#### Topología
* **Definición de topología:**
	* **Topología física:** Disposición física de los dispositivos en la red y como están conectados
	* **Topología lógica:** Circulación de información en la red
* **Tipos:**

![Topologías de red](https://github.com/pbldmngz/school/blob/master/7mo/Redes/imagenes/topologias_red.jpg "Topologías de red")

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

### Categorías estándar
* **De facto:** Sucedieron sin un plan formal
	* HTTP y Bluetooth
	* Si un estándar *de facto* es exitoso puede convertirse en de jure al *adoptarlo* una organización
* **De jure:** Se adoptaron como regla por una organización estandarizadora
	* Algunas organizaciones:
		* ITU: International Telecomunication Union
		* ISO: International Organization of Standarization
		* IETF: Internet Engineering Task Force
		* IEEE: Institute of Electrical and Electronics Engineers
		
### OSI vs TCP
![OSI vs TCP](https://github.com/pbldmngz/school/blob/master/7mo/Redes/imagenes/osi_tcp.jpg "OSI vs TCP")

#### Capas del modelo TCP
* **Capa de aplicación:** Contiene los protocolos de alto nivel como TELNET, FTP o SMTP
* **Capa de transporte:** 
	* Se definen dos protocolos de transporte aquí:
		* **TCP:** Transmission Control Protocol
			* Envía un flujo de Bytes a otra máquina que luego vuelve a montarlos en la capa de internet
			* También puede asegurarse de que no se satura un receptor con más mensajes de los que puede procesar
		* **UDP:** User Datagram Protocol
			* Se usa cuando no necesitas integridad en la información sino velocidad
			* Por ejemplo: Audio en llamadas o streaming de vídeo
* **Capa de internet:** 
	* Permite al host injectar paquetes en cualquier red y hacerlos viajar de forma intependiente hacia el destino
	* Es posible que los paquetes lleguen en desorden, es problema de las capas superiores el arreglarlo
	* Esta capa define un formato oficial de paquete y protocolo llamados respectivamente
		* IP (Internet Protocol)
		* ICMP (Internet Control Message Protocol)
	* El objetivo de esta capa es llevar los paquetes IP a donde se supone que van
* **Capa de enlace:** Interfaz entre el host y los enlaces de transmisión.

##### Protocolos por capas

![Protocolos por capa](https://github.com/pbldmngz/school/blob/master/7mo/Redes/imagenes/protocolos_capas.jpg "Distribución de protocoloes por capas")

### Multiplexing, Demultiplexing y Encapsulación en implementación por capas
* Chunks: Paquetes de bytes
* Encapsulamiento: Cuando un PDU es llevado por una capa inferior se dice que es encapsulado por la siguiente capa hacia abajo.
* Multiplexing: 
	* Combinar dos señales y enviarlas por el mismo medio. 
	* Permite multiples protocolos (o varias instancias del mismo) coexistiendo en  en la misma infraestructura.
	* Uno de los beneficios de la implementación por capas.
* Demultiplexing: Proceso de separar una señal combinada.

### Números de puerto
* 16-bit de numeros enteros positivos, rango de 0 a 65535.
* Abstractos, no refieren a nada físico.
* Son usados para determinar el receptor correcto.
* En cliente/servidor, el servidor se "ancla" (bind) a un puerto, a continuación los clientes entablecen una conexión a través de este.

## Arquitectura de direcciones de internet
* Todos los dispositivos conectados a internet tienen una dirección IP.
* Se utilizan DNS para identificar una o varias IP.
* Existen versiones del protocolo IP de la 1 a la 9

### IPv4
* Dotted-quad notation: 255.255.255.255
* Expresa un entero de 32 bits
* 2^32 Slots
* Ninguna IP libre en la actualidad

### IPv6
* 8 hexadecimal quads separated by colons: 5f05:2000:80ad:5800:0058:0800:2023:1d71
* Expresa un entero de 128 bits
* 2^32 Slots
* No es necesario escribir los 0's a la izquierda
* Se puede compactar 0:0:0:0:0:0:0:1 como ::1 o 1:0:1:0:0:0:0:0 como 1:0:1::0
* Se pueden usar IPv4 en este formato, de la forma ::ffff:255.255.255.255
* Se buscan en la barra de navegación como http://[IPv6]:puerto/

### Basic IP Address Structure
* Al haber tal cantidad de direcciones (especialmente en IPv6) se divide el espacio de direcciones en chunks.
* Al subdividir una y otra vez se suele llegar a una dirección unicast.
* La mayoría de las direcciones IPv4 son de tipo unicast.
* Existen direcciones broadcast, multicast y anycast. También otras de propósitos especiales.

#### Classful addressing
* Cuando el la estructura de direcciones de internet fue creada, cada dirección IP unicast tenía una posición.
* Cierta cantidad de números eran "net numbers" y los restantes "host numbers".
* Se crearon las clases de redes, definidas en sus primeros bits:
	* A: 0 : Net number = 8 (-1) bits, Host number = 24 bits. 0 - 127
	* B: 10 : Net number = 16 (-2) bits, Host number = 16 bits. 128 - 191
	* C: 110 : Net number = 24 (-3) bits, Host number = 8 bits. 192 - 223
	* D: Multicast address = 32 bits. 224 - 239
	* E: Reserved = 32 bits. 240 - 255

#### Subnet addressing
* Se crean direcciones IP exclusivas de una red. A los ojos del internet, la red quiere conectarse, pero como individuo obtienes datos a través de esta.
* Los primeros 16 bits de cada dirección son fijos.
* Los últimos 16 bits pueden ser divididos por el administrador de red según necesite.
* 8 bits son elegidos como número de subred, dejando 8 para el host. Esto permite 256 subredes.
* A su vez, cada una de estas tiene disponibles 254 subredes, la primera da el nombre de la red y la última es broadcast, así que son reservadas.
* La longitud de la subred es igual al de la IP en uso (32 para IPv4, 128 para IPv6).
* Son configuradas igual que las demás IP, usando DHSP.
* Las máscaras de subred son formadas por un 1 seguido de 0's
* La longitud del prefijo es la cantidad de 1's. Se expresa /32 /1 /n

##### Variable-Length Subnet Masks
* Usar diferentes porciones de una red.
* Complica el mantenimiento péro aumenta flexibilidad.
* Se usa el prefijo /n para saber cuantas subredes hay:
	* /24 = 32 - 24 = 256 hosts
	* /25 = 128 hosts
	* /26 = 64 hosts

> La dirección broadcast se obtiene estableciendo la red/subred a cierto valor y reemplazando los últimos bits por 1.
![Dirección broadcast](https://github.com/pbldmngz/school/blob/master/7mo/Redes/imagenes/broadcast_address.jpg "Broadcast Address")
