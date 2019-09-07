# SISTEMAS OPERATIVOS, PRIMER PARCIAL
## Sistema Operativo
Ya que es imposible para un humano comprender en su totalidad cada uno de los componentes de un ordenador, estos vienen equipados con una capa de software llamada **"Sistema Operativo"**. Un sistema operativo es un programa que actúa de **intermediario entre el usuario y el hardware**, haciendo un **uso eficiente** de los recursos y proporcionando un **modelo de interacción más comprensible** y limpio para el usuario.

> `HARDWARE` >> `SISTEMA OPERATIVO` >> `SOFTWARE DE APLICACIONES`

### Kernel
Generalmente, en un sistema operativo como Windows, Mac OS o Linux, el usuario nunca interactúa realmente con el sistema operativo en sí, sino que con una **shell** cuando es en forma de texto y con una **GUI** (Graphic User Interface) cuando es de forma gráfica. Tanto la shell como la GUI son herramientas del sistema operativo para recibir las instrucciones del usuario.

|**Real computer structure:**|
|:--------------------------:|
|User Mode: App|
|User Mode: User interface program|
|**Kernel mode: Operating System**|
|Hardware|

El kernel es la parte fundamental del sistema operativo y se encarga de manejar los recursos y permitir que los programas hagan uso de estos, siendo los principales recursos:
* CPU
* Memoria
* Dispositivos de entrada/salida

**Además el kernel es encargado de proporcionar:**
* Protección mediante **niveles de acceso**
* Acceso compartido a los recursos, algunas CPU los dividen en *rings*

|**Anillos**|
|:-------------------------------:|
|Capa 1: Kernel|
|Capa 2: Manejo de memoria|
|Capa 3: Entrada/Salida|
|Capa 4: Sistema de archivos|
|Capa 5: Interfaz de usuario|

> La mayoría de los computadores dispone de (al menos) dos modos de operación: **modo usuario** y **modo kernel** (también llamado modo supervisor). El modo kernel tiene total acceso al hardware y puede ejecutar cualquier instrucción. El modo usuario tiene sus acciones limitadas.

**Principales funciones del Kernel**
* Gestionar las transferencias de información internas
* Comunicar la máquina con los operadores
* Controlar la ejecución de programas con la detección de rrores
* Auto-encadenar tareas
* Optimizar recursos
* Cargar y descargar programas automáticamente

### Clasificaciones de sistemas operativos
Según la perspectiva con la que se observen los sistemas operativos, pueden realizarse múltiples clasificaciones:
* Sistemas operativos por su **estructura** *(visión interna)*
* Sistemas operativos por los **modos de explotación**
* Sistemas operativos por los **servicios que ofrecen**
* Sistemas operativos por la **forma en que ofrecen sus servicios** *(visión externa)*

#### Monolítica
Los sistemas monolíticos son aquellos en los que su centro es un grupo de estructuras fijas, las cuales funcionan entre sí.

*Procesos principales:*
* Un programa principal que invoca el procedimiento de servicio solicitado.
* Un conjunto de procedimientos de servicio que llevan a cabo las llamadas del sistema.
* Un conjunto de procedimientos de utilería que ayudan a los procedimientos del servicio.

#### Capas
Consiste en organizar el sistema operativo como una jerarquía de capas, cada una construida sobre la inmediata inferior.

|**Capas**|
|:-------------------------------:|
|Capa 0: Hardware|
|Capa 1: Gestión del procesador|
|Capa 2: Gestión de memoria|
|Capa 3: Gestión de procesos|
|Capa 4: Gestión de dispositivos|
|Capa 5: Gestión de la información|

#### Máquina virtual
Un sistema de máquina virtual corre sobre el sistema operativo de la máquina como si fuese una aplicación, pero simula ser un sistema operativo usando los recursos asignados de la máquina en la que corre. En esencia es **una computadora dentro de una computadora**.

#### Cliente-Servidor
El ordenador **cliente** envía información al **servidor** (el eslabón más importante) y este la devuelve. Altamente efectivo para escalabilidad, fiabilidad y seguridad.

#### Por modos de explotación
* Por lotes
* Por multiprogramación

#### Por servicios ofrecidos
* Por el número de usuarios:
  * Mono-usuario
  * Multi-usuario

* Por el número de tareas:
  * Mono-tarea
  * Multi-tarea

* Por el número de procesadores:
  * Mono-proceso
  * Multi-proceso
    * Simétricos
    * Asimétricos

#### Por la forma de ofrecer los servicios
* Sistemas centralizados
* Sistemas de red
* Sistemas distribuidos
* Sistemas operativos paralelos

### Estructura de un sistema operativo
* Administrador de procesos
* Administrador de memoria
* Administrador de almacenamiento secundario
* Administrador de sistemas de entrada/salida
* Administrador de archivos
* Sistemas de protección
* Networking
* Sistemas de intérpretes de comandos
* Núcleos de sistemas operativos

## Procesos e hilos
