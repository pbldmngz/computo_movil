# Índice
- [Software ubicuo - primer parcial](#software-ubicuo---primer-parcial)
  * [Principios de cómputo ubicuo](#principios-de-cómputo-ubicuo)
  * [Línea del tiempo relevante](#línea-del-tiempo-relevante)
  * [Cómputo móvil](#cómputo-móvil)
    + [Diferentes nombres](#diferentes-nombres)
    + [Estándares](#estándares)
  * [Sistemas distribuidos](#sistemas-distribuidos)
    + [¿Qué es un sistema?](#-qué-es-un-sistema)
    + [Tipos de sistemas](#tipos-de-sistemas)
      - [¿Qué es un sistema distribuido?](#-qué-es-un-sistema-distribuido)
        * [Características](#características)
        * [Rendimiento](#rendimiento)
      - [¿Qué puede ser distribuido?](#-qué-puede-ser-distribuido)
    + [Problemas](#problemas)
      - [Retos](#retos)
    + [Objetivos](#objetivos)
- [Fundamentos de la Inteligencia Artificial](#fundamentos-de-la-inteligencia-artificial)
  * [Los 4 enfoques](#los-4-enfoques)
 
-----

# Software ubicuo - primer parcial
## Principios de cómputo ubicuo
* Ayuda a hacer algo
* La mejor computadora es la que no te das cuenta que existe
* Entre más cosas pueda hacer por intuición, mejor
* Debe ser una extensión de tu subconsciente
* La tecnología debería ser tranquilizante

## Línea del tiempo relevante
> No creo que sea relevante para el examen

* En **1940** Motorola creó un equipo militar llamado Handle Talkie H12-16 para comunicaciones por radio con frecuencias menores a 600kHz
* En **1947** AT&T concibió la idea de teléfono celular
	* Podían reutilizar una frecuencia usando celdas
	* Mejora la capacidad de tráfico de los móviles
	* Se solicitó a la FCC la asignación de gran cantidad de frecuencias del espectro radioeléctrico para garantizar servicios
* En **1955** Ericson comercializó el Mobile Telephone System A, un teléfono móvil de 40 kg que se instalaba en tu auto
* En **1965** AT&T comenzó a usar computadoras para hacer conmutación
* En **1973** Motorola saca el primer teléfono móvil, el DynaTAC 8000x, pesaba 800g y tardaba 10 horas en cargarse para solo una de utilidad
* En **1984** Nokia saca otro teléfono para carros, de 10kg llamado Mobira Talkman
* En **1989** 
	* WWW fue iniciado por Tim Berners-Lee
		* La red donde se uso es conocida como **ARPANET** (Advanced Research Projects Agency Network)
	* Motorola libera una versión reducida de su teléfono de 800g con menor peso y mejor batería
* En **1997** Nokia libera el "primer smartphone", tenía teclado y se abría el dispositivo para ver la pantalla.
* En **1999** Sale el Nokia 3210, vendiendo 150 millones de unidades
* En **2002** el RIM BlackBerry 5810 soportaba datos móviles
* En **2003** Sale el Nokia 1100, el dispositivo electrónico más vendido de la historia, con 150 millones en 5 años
* En **2004** Motorola Razor V3
* En **2005** Android fue comprado por Google
* En **2006** Nokia N95 es como un smartphone actual solo que altamente inferior
* En **2007** Sale iPhone
* En **2008** 
	* El primer teléfono con android, el HTC Dream
	* Apple lanza la App Store con 552 apps
* En **2009** 
	* Whatsapp
	* 4G en Suecia y Noruega
* En **2010**
	* iPhone 4 defectuoso
	* Nexus One de Google
	* Samsung Galaxy S
* En **2011** Samsung se consolida como el mayor vendedor mundial de smartphones con el Galaxy S II, con una buena pantalla y cámara de 8MP
* En **2012** iPhone 5
* En **2013** Se generaliza el escaneo de huellas digitales gracias al iPhone 5
* En **2015** El tráfico de 4G superó al de 3G
* En **2016** Google cambia a Nexus por Pixel
* En **2017** 
	* Microsoft se rinde con Windows Phone
	* Cada vez la pantalla abarca más espacio
* En **2018** sale Power 5, con 13k mAh
* En **2019** Se comienza a implementar 5G en Reino unido y EE.UU.
## Cómputo móvil
Describe el uso de computadoras sin la necesidad de estar conectadas a una red.

### Diferentes nombres
* **Anywhere, Anytime Information:** Definición de ubiquidad, donde siempre hay información disponible en todos lados
* **Virtual Home Environment:** Un ambiente computacional del que acceder desde cualquier lugar
* **Nomadic Computing:** Un ambiente computacional portátil
* **Pervasive Computing:** Una computadora incrustada en el ambiente de forma invisible
* **Ubiquitous Computing:** Una computadora incrustada en el ambiente de forma invisible
* **Global Service Portability:** Un ambiente computacional del que acceder desde cualquier lugar
* **Wearable Computers:** 
	* Lo que dice el nombre. 
	* Tienen su propio tipo de red, con menor potencia, las WBAN

### Estándares
* **IrDA - Asociación de Datos Infrarrojos:** Define un estándar físico en la forma de transmisión y recepción de datos basada en rayos de luz infrarroja.
	* Permite comunicación bidireccional que llega a 4Mbit/s
* **DECT - Telecomunicaciones Inalámbricas Mejoradas Digitalmente**
	* Un estándar para teléfonos inalámbricos digitales
	* Se usan bandas de radio con rango de frecuencia de alrededor de 2GHz
* **Bluetooth:** Permite la transmisión de datos entre dispositivos mediante un enlace por radiofrecuencia a 2.4GHz.
* **ZigBee:** Radiodifusión digital inalámbrica de bajo consumo.
* **NFC - Comunicación de campo cercano:** Intercambio de datos entre dispositivos a alta frecuenca a menos de 20 cm
* **WLAN - Redes locales inalámbricas:** 
	* Cobertura geográfica limitada
	* Velocidad relativamente alta
	* Administrada de forma privada
	* Radiofrecuencias de 2.4 a 2.5 GHz
* **WWAN - Redes externas inalámbricas:**
	* Usa tecnologías de red celular de comunicaciones móviles para transferir los datos
	* Ejemplos:
		* WiMAX
		* GPRS
		* GSM
		* HSPA
		* 3G-5G

## Sistemas distribuidos
### ¿Qué es un sistema?
Genera una **salida** que **depende de una entrada** después de un **retraso.**

### Tipos de sistemas
* **CVS - Continous Variable Systems:** Sus estados (entradas y salidas) cambian continuamente
* **DES - Discrete Event Systems:**
	* Cambio de estados desencadenados únicamente por eventos
	* Solo tiene estados **discretos**
		* Es un sistema hecho por el hombre
		* En la naturaleza casi siempre se encuentran estados **continuos**
	* El cambio es repentino, de golpe, como un evento en vez de un degradado

#### ¿Qué es un sistema distribuido?
Computadoras autónomas enlazadas entre sí en una red, reespaldadas por software que les permite actuar como una. Se hace ya que se puede conseguir mucho más poder que con una sola máquina.

|Sistema centralizado|Sistema distribuido|
|---|---|
|Estado almacenado en una sola computadora|Estado dividido en varias computadoras|
|Simple|Robusto|
|Fácil de entender|Complejo|
|Más rápido para un usuario individual|Más escalable, soporta a varios usuarios|

##### Características
* **Características:**
	* Sin memoria compartida, comunicación a base de mensajes
	* Cada máquina corre su propio sistema local
	* Heterogeneidad
* **Ideal:** 
	* Que parezca una sola computadora en vez de un grupo de muchas
	* Oculta la información interna y detalles de la comunicación
	* Provee una interfaz uniforme
* **Fácilmente expandible**
* **Disponibilidad continua:** Fallos en un componente pueden ser cubiertos por otros componenentes

##### Rendimiento
* **Rpeak:**
	* Es el valor máximo teorizado del rendimiento del sistema procesando números flotantes
	* Se lo mide en FLOPS (floating point operations per second)
* **Rmax:**
	* Es el valor máximo medido con un software en una operación real
	* Rmax nunca será mayor a Rpeak

![Prefijos de magnitos en FLOPS](https://github.com/pbldmngz/school/blob/master/7mo/Ubicuo/imagenes/flops.jpg "Prefijos de magnitos en FLOPS")

> El 100% de las supercomputadoras del top 500 corren actualmente sobre algún sabor de Linux

#### ¿Qué puede ser distribuido?
* **Hardware distribuido:** Dos o más computadoras con información local y procesadores
* **Control distribuido:** Control de un sistema de forma paralela desde diferentes ubicaciones
* **Datos distribuidos:** La información se almacena en diferentes ubicaciones

> **Hardware** distribuido **+** **Control** distribuido **+** **Datos** distribuidos **=** **Sistema distribuido**

### Problemas
* **Concurrencia:** 
	* Dos computadoras intentan acceder al mismo recurso
	* Los retrasos de la red no son constantes por lo que es difícil sincronizar
* **No hay un reloj global:**
	* De ser necesario cooperar, se coordinan intercambiando mensajes
	* La coordinación requiere de nociones del antes y después
	* Hay un límite en la precisión a la que un componente puede sincronizar su reloj, no hay una noción correcta de tiempo a nivel global
	* Los mensajes enviado dependen también del retraso de la red
* **Fallos independientes:** 
	* Un sistema informático va a fallar, la robustez es buen diseño
	* Los sistemas distribuidos fallan en formas nuevas
	* Problemas de red pueden llevar a tener un componente aislado pero no detenido
	* Dilemas como esperar un acknowledgement y nunca recibirlo
	* ¿Fue el sistema que no recibió tu mensaje o simplemente falló?

#### Retos
* **Heterogeneidad:** Hay diversidad en los modelos, diseños, sistemas operativos y características en general. Protocolos de comunicación y middleware puede enmascararlo
* **Apertura:** Integrar componentes escritos por diferentes programadores es un gran reto
* **Seguridad:** Se puede utilizar la encriptación pero los ataque DoS siguen siendo un problema
* **Escalabilidad:** 
	* Un sistema distribuido es escalable si el costo de añadir nuevos usuarios es constante
	* Se deben evitar cuellos de botella y la información debe estar estructurada
	* La información accesada frecuentemente puede ser replicada
* **Manejo de fallos:** Va a fallar, te toca a ti prevenir como

### Objetivos
* **Disponibilidad de recursos:** Compartir mejorando el rendimiento
* **Transparencia en la distribución:** Para la facilidad de uso
* **Apertura:** Soporte a la interoperabilidad, portabilidad y extensibilidad
* **Escalabilidad:** Con respecto al tamaño (cantidad de usuarios), distribución geográfica y dominios administrativos

-----

# Fundamentos de la Inteligencia Artificial
## Los 4 enfoques
* **Pensando como humano:** 
	* **¿Cómo piensa un humano? Para saberlo se utilizan**
		* Introspección
		* Experimentos psicológicos
		* Tomografías o imágenes cerebrales
	* **Enfoque del modelo cognitivo**
		* La ciencia cognitiva reúne modelos de computadora de AI y técnicas experimentales de la psicología para construir teorías precisas y comprobables de la mente humana
		* Se fundamenta en investigación experimental con humanos y animales
* **Pensando racionalmente:**
	* Enfoque basado en las leyes del pensamiento/lógica
	* Uso de silogismos (conclusiones en base a dos enunciados)
		* Sócrates es un hombre
		* Todos los hombres son mortales
		* **Por lo tanto, Sócrates es mortal**
	* **Obstáculos:**
		* No es sencillo traducir conocimiento informal en conocimiento formal usando notación lógica, particularmente cuando el conocimiento no es 100% seguro.
			* Falacias y paradojas
		* Hay diferencia entre resolver un problema "en principio" y en la práctica
			* Intratabilidad: Demasiadas variables pueden agotar recursos de cualquier computadora
* **Actuando como humano:**
	* Debe de pasar la prueba de Turing
		* La prueba de Turing consiste en:
			* Dos personas y una máquina, una de las personas hace de juez y los otros dos participantes deberán hacerle creer que son el humano
			* No se necesita interacción física para demostrar inteligencia
				* Pero si necesita visión por computadora para percibir objetos y
				* Robótica para manipularlos
		* Compone:
			* Procesamiento del lenguaje natural
			* Representación del conocimiento
			* Razonamiento automatizado
			* Aprendizaje máquina
* **Actuando racionalmente:** Enfoque del agente racional
	* **Debe:** 
		* Ser autónomo
		* Percibir su entorno
		* Persistir a través de periodos extensos de tiempo
		* Adaptarse al cambio
		* Crear y perseguir metas propias
	* Actúa para lograr el mejor resultado posible
	* Ser un agente racional incluye hacer inferencias correctas
	* Las inferencias correctas pueden no ser siempre razonables, es posible que se llegue a un callejón sin salida
	* **Ventajas:**
		* Es más general que aquel basado en las leyes del pensamiento
		* Es un desarrollo científico más adecuado que los enfoques basado en el comportamiento/pensamiento humano
		* La racionalidad está matemáticamente bien definida
	* **Racionalidad:**
		* **Racionalidad perfecta:** 
			* Tiene toda la información y capacidad de cálculo disponible, es básicamente el **demonio de Laplace**
			* No es factible en entornos complicados
			* Es buen punto de partida para el análisis
		* **Racionalidad limitada:** 
			* Siempre hay incertidumbre porque le faltan datos y capacidad de cómputo
			* Enfoque en situaciones donde no se dispone de tiempo o recursos
	
