# Index
- [Redes y comunicación, segundo parcial](#redes-y-comunicaci-n--segundo-parcial)
  * [Siglas](#siglas)
  * [Presentación 1](#presentaci-n-1)
    + [TCP/IP](#tcp-ip)
      - [TCP](#tcp)
      - [UDP](#udp)
  * [Presentación 2](#presentaci-n-2)
    + [Motivos por el cual OSI no funcionó](#motivos-por-el-cual-osi-no-funcion-)
    + [Fallas del TCP/IP](#fallas-del-tcp-ip)
    + [Multiplexing, Demultiplexing y Encapsulación en implementacion por capas](#multiplexing--demultiplexing-y-encapsulaci-n-en-implementacion-por-capas)
  * [Presentación 3](#presentaci-n-3)
    + [Network standarization](#network-standarization)
    + [Network performance](#network-performance)
  * [Presentación 4](#presentaci-n-4)
    + [Port numbers](#port-numbers)
    + [Broadcast Storm problem](#broadcast-storm-problem)
  * [Presentación 5, 6 , 7 - Arquitectura de direcciones de internet](#presentaci-n-5--6---7---arquitectura-de-direcciones-de-internet)
    + [IPv4](#ipv4)
      - [Header](#header)
    + [IPv6](#ipv6)
      - [Header](#header-1)
    + [Basic IP Address Structure](#basic-ip-address-structure)
      - [Classful addressing](#classful-addressing)
      - [Subnet addressing](#subnet-addressing)
      - [DHSP](#dhsp)
      - [Variable-Length Subnet Masks](#variable-length-subnet-masks)
      - [IPv4 embebida en IPv6](#ipv4-embebida-en-ipv6)
      - [CIDR - Classless Inter-Domain Routing](#cidr---classless-inter-domain-routing)
  * [Presentación 8](#presentaci-n-8)
    + [Implementación de un servicio connection-less](#implementaci-n-de-un-servicio-connection-less)
    + [Implementación de un servicio connection-oriented](#implementaci-n-de-un-servicio-connection-oriented)
    + [Comparación Circuito Virtual vs Red de Datagramas](#comparaci-n-circuito-virtual-vs-red-de-datagramas)
  * [Presentación 9 (y final de la 8) - Algoritmos de enrutamiento](#presentaci-n-9--y-final-de-la-8----algoritmos-de-enrutamiento)
    + [Propiedades deseables en un algoritmo de enrutamiento](#propiedades-deseables-en-un-algoritmo-de-enrutamiento)
    + [Tipos generales de algoritmos en enrutamiento](#tipos-generales-de-algoritmos-en-enrutamiento)
      - [Principio de optimalidad](#principio-de-optimalidad)
      - [Flooding](#flooding)

# Redes y comunicación, segundo parcial
## Siglas
* IMP = Interface Message Processor
* TCP = Transmission Control Protocol
* DoD = Departament of Defense
* ICMP = Internet Control Message Protocol
* IP = Internet Protocol
* UDP = User Datagram Protocol
* OSI = Open Systems Interconnection
* PDU = Protocol Data Unit
* RFC = Request For Comments
* BER = Bit Error Rate/Ratio
* BEP = Bit Error Probability
* DNS = Domain Name System
* DHCP = Dynamic Host Configuration Protocol
* IPv4 = Internet Protocol Version #
* VLSM = Variable Length Subnet Mask
* CIDR = Classless Inter-Domain Routing
* VC = Virtual Circuit
* ISP = Internet Service Provider
* IHL = Internet Header Length
* DS = Differentiated Service
* DF = Don't Fragment
* MF = More Fragments
* MPLS = MultiProtocol Label Switching
* DAG = Directed Acyclic Graph

* IANA = Internet Assigned Numbers Authority 
* ARPA = Advanced Research Projects Agency
* ITU = International Telecomunication Union
* ISO = International Standards Organization
* IEEE = Institute of Electrical and Electronics Engineers
* IAB = Internet Activities Board

## Presentación 1
### TCP/IP
* 4 Capas: Enlace, Internet, Transporte, Aplicación
    * Enlace: Interfaz entre host y enlaces de transmisión. Describe como deben de llevarse a cabo las comunicaciones.
    * Internet: Permite a host injectar paquetes en la red y dejarlos moverse de forma independiente hacia su destino. Define el formato oficial de un paquete utilizando IP y ICMP. Envía paquetes a sus destinos.
    * Transporte: Permite la convesación entre host y destino. Usa TCP o UDP.
    * Aplicación: Contiene protocolos de alto nivel. Engloba la capa de sesión y presentación del modelo OSI en una sola.
* Arquitectura flexible
* Connectionless

#### TCP
* Reliable connection-oriented protocol
* Rompe un paquete en partes y las reensambla al otro lado

#### UDP
* Unreliable connection-less protocol

## Presentación 2
### Motivos por el cual OSI no funcionó
* Mal timing: 
    * Justo después de que TCP/IP fuera estandarizado. No era inteligente meter un segundo protocolo al mercado habiendo apenas sacado uno, se comerían sus ventas.
* Mala tecnología: 
    * Capas saturadas y otras casi inútiles. 
    * Exageradamente complejo. 
    * Dificil de implementar e ineficiente.
* Mala implementación:
    * TCP/IP fue bueno y gratis en su primera implementación, este era enorme y tosco. Se asoció OSI con mala calidad.
    * Poca gente lo usaba, eso hacía que su documentación y mejoras fueran en espiral hacia abajo en vez de arriba como con TCP/IP.
* Malas políticas:
    * Se pensaba TCP/IP como parte de UNIX.
    * OSI era cuestión de burocracias que querían meter a la fuerza un protocolo claramente inferior.

### Fallas del TCP/IP
* No distingue entre servicios, interfaces y protocolos. Esto es una mala práctica.
* No es para nada general, no soporta nada distinto a si mismo.
* No distingue entre la capa física y la de enlace de datos, que son completamente distintas.

### Multiplexing, Demultiplexing y Encapsulación en implementacion por capas
* Chunks: Paquetes de bytes
* Encapsulamiento: Cuando un PDU es llevado por una capa inferior se dice que es encapsulado por la siguiente capa hacia abajo.
* Multiplexing: 
    * Combinar dos señales y enviarlas por el mismo medio. 
    * Permite multiples protocolos (o varias instancias del mismo) coexistiendo en  en la misma infraestructura.
    * Uno de los beneficios de la implementación por capas.
* Demultiplexing: Proceso de separar una señal combinada.

## Presentación 3 
### Network standarization
* Estándar: Define que es necesario para la interoperabilidad.
    * De facto: Los estándares "from the fact" surgen sin ningún plan.
        * HTTP
        * Bluetooth
    * De jure: Los estándares "by law" son adoptados por normas de algún organismo de estandarización.
        * Los organismos de estandarización pueden ser gubernamentales o voluntarios.
        * Estándares de facto se suelen conventir en de jure si se desempeñan exitosamente, un ejemplo es HTTP.

### Network performance
* Bandwidth: bit/s que puede transportar.
* Latencia: Demora del primer bit en llegar del cliente al servidor.
* Jitter: Desvicación estándar del tiempo (en ms) de entrega de paquetes. Packet delay variation
* Throughput: (Maximum) rate of successful message delivery. bit/s.
    * System/aggregate throughput = Sum of data rates that are delivered to all terminals in a network.
* Goodput: Número de bits con información útil (no headers) entregados por la red a algún destino por unidad de tiempo.
* Bit error rate: Cantidad de errores de bit por unidad de tiempo.
* Bit error ratio: Cantidad de errores de bit dividida entre el total de bits transferidos por unidad de tiempo.
* Bit error probability: Bit error ratio estimado.

## Presentación 4
### Port numbers
* 16-bit de numeros enteros positivos, rango de 0 a 65535.
* Abstractos, no refieren a nada físico.
* Son usados para determinar el receptor correcto.
* En cliente/servidor, el servidor se "ancla" (bind) a un puerto, a continuación los clientes entablecen una conexión a través de este.

### Broadcast Storm problem
* Cantidades ingentes de tráfico broadcast constituyen una broadcast storm.
* El paquete que induce una broadcast storm se conoce como Chernobyl packet.

## Presentación 5, 6 , 7 - Arquitectura de direcciones de internet
* Todos los dispositivos conectados a internet tienen una dirección IP.
* Se utilizan DNS para identificar una o varias IP.
* Existen versiones del protocolo IP de la 1 a la 9

### IPv4
* Dotted-quad notation: 255.255.255.255
* Expresa un entero de 32 bits
* 2^32 Slots
* Ninguna IP libre en la actualidad

#### Header
* Version: 4bits
* Internet Header Length: 4 bits
* Differentiated Service: 6 bits
* Total Length: 16 bits
* Identification: 16 bits
* Flags: 3 bits
    * Is this malicius trafic?
    * DF
    * MF
* Fragment Offset: 13 bits
* Time to live: 8 bits
* Protocol: 8 bits
* Header Checksum: 16 bits
* Source Address: 32 bits
* Destination address: 32 bits
* Options: variable
* Padding: variable
* Data: variable

### IPv6
* 8 hexadecimal quads separated by colons: 5f05:2000:80ad:5800:0058:0800:2023:1d71
* Expresa un entero de 128 bits
* 2^32 Slots
* No es necesario escribir los 0's a la izquierda
* Se puede compactar 0:0:0:0:0:0:0:1 como ::1 o 1:0:1:0:0:0:0:0 como 1:0:1::0
* Se pueden usar IPv4 en este formato, de la forma ::ffff:255.255.255.255
* Se buscan en la barra de navegación como http://[IPv6]:puerto/

#### Header
* Hop Limit: 8 bits
* Source address: 128 bits
* Destination address: 128 bits

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

#### DHSP
* Protocolo de gestión de redes usado en UDP/IP.
* Asigna una dirección al conectarse un dispositivo.

#### Variable-Length Subnet Masks
* Usar diferentes porciones de una red.
* Complica el mantenimiento péro aumenta flexibilidad.
* Se usa el prefijo /n para saber cuantas subredes hay:
    * /24 = 32 - 24 = 256 hosts
    * /25 = 128 hosts
    * /26 = 64 hosts

#### IPv4 embebida en IPv6
* Concatenar IPv6 con IPv4 asegurándose de que los bits 63-71 entán en 0, insertándolos si es necesario. Insertar al final un sufijo de bits en 0 hasta llegar a 128.

#### CIDR - Classless Inter-Domain Routing
* Mpétodo para asignar direcciones y enrutamiento IP.
* Se divide: Bits más significativos son el prefijo de red, los menos significativos el identificador de host.
* Al usar CIDR ningún rango de IP pertenece a una clase, por contraparte requiere de una máscara similar a la máscara de subred, llamada Máscara de CIDR.
* Un prefino de n bits es predefinido para los primeros bits de una IP.
* Se suele adjuntar al final de la IP precedido de un "/". 128.0.0.0/24

## Presentación 8
* Connectionless:
    * Paquetes son inyectados a la red y ruteados de forma independiente.
    * Ninguna configuración previa es requerida.
    * Los paquetes se llaman datagramas.
    * La red es llamada una red de datagramas.
* Connection-oriented:
    * Se establece la ruta del paqute antes de que cualquier paquete sea enviado.
    * Esta conexión se llama Circuito Virtual.
    * A la red se la llama Red de Circuito Virtual.
### Implementación de un servicio connection-less
* En una red de datagramas, si un paquete excede el tamaño máximo de paquete, este se fragmenta.
* A lo largo del camino, cada enrutador tiene una tabla que dice hacia donde debe enviar los paquetes.
    * En la tabla hay pares que señalan el destino y a que nodo debe ir a continuación para acercarse.
* Al llegar, los paquetes son almacenados momentáneamente para verificar el checksum.
* Algoritmo de enrutamiento: El algoritmo que gestiona las tablas y toma las decisiones de enrutamiento.

### Implementación de un servicio connection-oriented
* Para un servicio connection-oriented, necesitamos una red de circuito virtual. El propósito es no perder tiempo eligiendo ruta en cada paquete.
* En vez de eso, al conectarse, la ruta desde la fuente al destino es elegida y almacenada en las tablas de los routers.
* Cuando se rompe la conexion, también se rompe el circuito.
* Cada paquete lleva un identificador que dice a qué circuito pertenece.
* Label switching: Se asignal etiquetas a otros paquetes circulando por el mismo circuito.

### Comparación Circuito Virtual vs Red de Datagramas
* Es un **trade-off** en el tiempo de parseo y en el setup.

Tema | Red de Datagramas | Circuito Virtual
--- | --- | ---
Configuración del circuito | No requiere | Requerida
Direccionamiento | Los paquetes contienen la dirección completa | Cada paquete tiene un identificador de Circuito Virtual
Información de estado | Los enrutadores no guardan información sobre las conexiones | Cada VC necesita un espacio en la tabla del enrutador
Enrutamiento | Cada paquete es enrutado de forma independiente | La ruta se genera al establecerse la conexión, todos los paquetes la siguen
Efecto de fallo de enrutamiento | Ninguno excepto por los paquetes perdidos al crashear | Todos los VC que pasaban por el enrutador afectado son finalizados
Calidad de servicio | Difícil | Fácil si se disponen de recursos suficientes por adelantado para cada VC
Control de congestión | Difícil | Fácil si se disponen de recursos suficientes por adelantado para cada VC

## Presentación 9 (y final de la 8) - Algoritmos de enrutamiento
* Su función es hacer llegar un paquete de forma eficiente desde el punto A al punto B, generalmente a través de distintos saltos.
* Si se usan datagramas, estas rutas se deben de aplicar a cada paquete.
* Si se usan VC solo tiene que ser calculado al inicio.
* Session routing mantiene la ruta durante una sesión.
* Forwarding: 
    * Maneja cada paquete que va llegando y los envía hacia donde digan las tablas.
    * Los otros procesos son responsables de llenar y actualizar las tablas de enrutamiento. Ahí es cuando entra el algoritmo de enrutamiento.
### Propiedades deseables en un algoritmo de enrutamiento
* Correctness
* Simplicity
* Robustness: Soportar cambios en la topología.
* Estabilidad: Llegar rapidamente a la solución y que esta sea fija, que llegue rápido al equilibrio.
* Fairness: Dar el mismo trato a todas las conexiones.
* Eficiencia

### Tipos generales de algoritmos en enrutamiento
* Algoritmos adaptativos: Dynamic routing algorithms
    * Obtienen información de otros enrutadores.
    * Cambian las rutas de ser necesario.
    * Se utiliza una métrica para optimización, como número de saltos, distancia o tiempo.
* Algoritmos no adaptativos: Static routing
    * No basan sus mediciones en la topología o el tráfico.
    * La elección de la ruta se computó por adelantado y se cargó a los enrutadores al encender la red.
* No soporta fallos, solo se utiliza cuando todo el funcionamiento está claro.

#### Principio de optimalidad
* Cualquier camino dentro de un camino mayor óptimo, también será optimo.
* Sink tree: Mejor distribución de rutas entre nodos. Procurar que todo quede en pocos caminos cortos. No tiene ciclos.

#### Flooding
* Se envía un paquete hacia todos los nodos próximos excepto por el que llegó. 
* Gasta muchos recursos.
* Siempre llegará el paquete.
* Duplicidad que se eleva hacia el infinito.
* Extremadamente robusto.
* No requiere apenas configuración.
* Se puede utilizar de "building block".
* Es usado como métrica contra otros algoritmos.

* Maximiza la probabilidad de una entrega correcta a costa de los recursos de la red.
* Se puede limitar la replicación poniendo un tiempo de vida o un límite de saltos.
