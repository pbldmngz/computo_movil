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
|:-------------------------------|
|Capa 1: Kernel|
|Capa 2: Manejo de memoria|
|Capa 3: Entrada/Salida|
|Capa 4: Sistema de archivos|
|Capa 5: Interfaz de usuario|

> La mayoría de los computadores dispone de (al menos) dos modos de operación: **modo usuario** y **modo kernel** (también llamado modo supervisor). El modo kernel tiene total acceso al hardware y puede ejecutar cualquier instrucción. El modo usuario tiene sus acciones limitadas.

**Principales funciones del Kernel**
* Gestionar las transferencias de información internas
* Comunicar la máquina con los operadores
* Controlar la ejecución de programas con la detección de errores
* Auto-encadenar tareas
* Optimizar recursos
* Cargar y descargar programas automáticamente

### Clasificaciones de sistemas operativos
Según la perspectiva con la que se observen los sistemas operativos, pueden realizarse múltiples clasificaciones:
* Sistemas operativos por su **estructura** *(visión interna)*
* Sistemas operativos por los **modos de explotación**
* Sistemas operativos por los **servicios que ofrecen**
* Sistemas operativos por la **forma en que ofrecen sus servicios** *(visión externa)*

#### Estructura
##### Monolítica
Los sistemas monolíticos son aquellos en los que su centro es un grupo de estructuras fijas, las cuales funcionan entre sí.

*Procesos principales:*
* Un programa principal que invoca el procedimiento de servicio solicitado.
* Un conjunto de procedimientos de servicio que llevan a cabo las llamadas del sistema.
* Un conjunto de procedimientos de utilería que ayudan a los procedimientos del servicio.

##### Capas
Consiste en organizar el sistema operativo como una jerarquía de capas, cada una construida sobre la inmediata inferior.

|**Capas**|
|:-------------------------------|
|Capa 0: Hardware|
|Capa 1: Gestión del procesador|
|Capa 2: Gestión de memoria|
|Capa 3: Gestión de procesos|
|Capa 4: Gestión de dispositivos|
|Capa 5: Gestión de la información|

##### Máquina virtual
Un sistema de máquina virtual corre sobre el sistema operativo de la máquina como si fuese una aplicación, pero simula ser un sistema operativo usando los recursos asignados de la máquina en la que corre. En esencia es **una computadora dentro de una computadora**.

##### Cliente-Servidor
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
  * Mono-procesador
  * Multi-procesador
    * Simétricos
    * Asimétricos

#### Por la forma de ofrecer los servicios
* Sistemas *centralizados*
* Sistemas de *red*
* Sistemas *distribuidos*
* Sistemas *operativos paralelos*

### Estructura de un sistema operativo
* Administrador de *procesos*
* Administrador de *memoria*
* Administrador de *almacenamiento secundario*
* Administrador de *sistemas de entrada/salida*
* Administrador de *archivos*
* Sistemas de *intérpretes de comandos*
* Sistemas de *protección*
* Networking
* Núcleos de sistemas operativos

## Procesos e hilos
En un inicio, los sistemas operativos solo permitían ejecutar un programa a la vez. Este programa obtenía el control completo del sistema. Cuando se permitió la ejecución concurrente de múltiples programas, se dió nombre al **"proceso"**.

### Proceso
#### ¿Qué es?
* Es un programa en ejecución
* Es la unidad de trabajo de un sistema operativo moderno
* Un sistema operativo se puede ver como un conjunto de procesos
  * Los procesos del sistema operativo ejecutan "código de sistema"
  * Los procesos del usuario ejecutan "código de usuario"
* Todos los procesos se ejecutan de forma *pseudo-concurrente* (mientras espera a que una finalice, puede atender otras peticiones), con la CPU conmutando entre ellos

> Para hacer más eficiente el proceso, el CPU cambia de un proceso a otro, dando la ilusión de paralelismo. A este funcionamiento se le conoce como *multiprogramación*.

#### Características:
* Valores actuales del contador del programa, registros y variables
* Cada proceso tiene su propia CPU virtual
* Tiene:
  * Programa
  * Entrada
  * Salida
  * Estado

> Un único procesador puede ser compartido entre varios procesos. Un programa es algo que puede simplemente almacenarse en el disco.

##### Características a considerar
Ya que no todos los equios de cómputo procesan el mismo tipo de trabajos, se deben de tomar en cuenta estas características:

|**Característica**|**Definición**|
|:-----------------|:-------------|
|*Cantidad de entrada/salida*|Existen procesos con una gran cantidad de entrada/salida, como las aplicaciones de bases de datos|
|*Cantidad de uso del CPU*|Existen procesos que no realizan muchas operaciones de entrada/salida pero si la CPU, por ejemplo, operaciones con matrices|
|*Procesos por lotes o interactivos*|Un proceso por lote es más rápido ya que lee datos de archivos, uno interactivo debe esperar por la respuesta del usuario|
|*Procesos en tiempo real*|Si los procesos deben dar respuesta en tiempo real se requiere que tengan prioridad para los turnos de ejecución|
|*Longevidad de los procesos*|Existen procesos que pueden demorar varias horas en finalizar, otros son casi instantáneos|

#### Cuatro eventos principales hacen que se creen procesos
* Inicialización del sistema
* Ejecución de una llamada al sistema de creación de procesos por un proceso en ejecución
* Una solicitud del usuario para crear un nuevo proceso
* Inicialización de un trabajo por lotes

> Los conceptos de **tareas** y **procesos** son equivalentes y se pueden intercambiar.

#### Recursos de un proceso
* Código ejecutable
* Registros temporales
* Contador
* Datos
* Pila

> Si dos o mas procesos forman parte de un mismo programa, se consideran secuencias separadas de ejecución y pueden cooperar entre ellos.

#### Estados de los procesos
Un proceso tiene una naturaleza dinámica, cuando un proceso se ejecuta cambia de estado. Estos estados no son visibles para el usuario, quien siempre verá como que un proceso se está *ejecutando*.

|**Estado**|**Descripción**|
|:--------|:--------|
|*Nuevo*|Se está creando|
|*Corriendo*|Se está ejecutando. El proceso tiene el control del procesador|
|*En espera*|No puede ejecutarse de momento porque está a la espera de algún recurso o evento|
|*Preparado*|El proceso está listo para ocupar la CPU pero no está en ejecución por alguna causa|
|*Finalizado*|El proceso terminó su ejecución|

Todo proceso a lo largo de su existencia puede cambiar de estado varias veces, a esto se le denomina *transición de estado*:

|**Transición**|**Descripción**|
|:--------|:--------|
|*Comienzo de la ejecución*|El proceso se inserta en la cola de preparados|
|*Paso a estado de ejecución*|Cuando el procesador no tiene tareas pendientes y existe un proceso en la cola de preparados, toma el primero y pasa a ejecución|
|*Paso a estado bloqueado*|Un proceso que espera un evento se mueve a la cola de de bloqueados, cambiando su estado e iniciando el siguiente proceso|
|*Paso a estado preparado*|El proceso cambia a estado preparado|

#### Operaciones sobre procesos
Los procesos en un sistema operativo pueden ejecutarse concurrentemente y deben ser creados y eliminados dinámicamente. Para esto se deben proveer llamadas al sistema que permitan:
* Crear procesos
* Destruir procesos
* Suspender procesos
* Reanudar procesos
* Cambiar prioridad al proceso
* Temporizar un proceso
* Despertar un proceso
* Terminar procesos

##### Crear el proceso
Al producirse la orden de ejecución se suelen necesitar varios argumentos (como el nombre o la prioridad). En este momento aparece el **PCB** (bloque de control del proceso), que será insertado en la cola de procesos preparados.

La creación de un proceso puede ser de dos tipos, la arcaica y poco usada actualmente, **no jerárquica** y la **jerárquica**. En esta última, el proceso creado es hijo del proceso anterior y hereda el entorno de ejecución de su padre. Un proceso hijo puede a su vez ser padre de otras tareas, formando así una **jerarquía de procesos**.

> El primer proceso que ejecuta un usuario será hijo del intérprete de comandos con el que interactúa.

Un proceso padre tiene dos opciones para compartir recursos, puede continuar ejecutandose de forma concurrente o esperar a que sus hijos terminen. O en ciertos casos puede obtener recursos directamente del sistema operativo.

##### Destruír un proceso
Se envía la orden de eliminación del proceso, con la cual el sistema operativo destruye su **PCB**.
Un proceso pide al sistema operativo que lo elimine cuando se da por terminado, al hacerlo, todos los recursos se devuelven al sistema. Un proceso se puede dar por terminado en estos casos:
* Se ejecutó la última sentencia
* Un proceso decide terminar
* Un proceso decide matar a otro

> Un proceso padre puede matar a sus hijos

##### Suspender un proceso
Paraliza un proceso que más tarde puede ser reanimado. Se suele utilizar en situaciones de mal funcionamiento o sobrecarga.

##### Reanudar un proceso
Tratar de activar un proceso suspendido previamente.

##### Temporizar la ejecución de un proceso
Hace que un proceso se ejecute cada cierto tiempo.

##### Despertar un proceso
Es una forma de desbloquear un proceso que había sido previamente bloqueado.

#### Prioridades
Todo proceso lleva integradas ciertas necesidades de ejecución en cuanto a urgencia y asignación de recursos. Estas **prioridades** se pueden clasificar como **asginadas** por el **sistema operativo** o por el **propietario**. También se separan en **estáticas** y **dinámicas**, siendo no modificables y modificables, respectivamente.

##### Prioridades asignadas por el sistema operativo
La prioridad fue asignada al proceso en el momento de comenzar su ejecución y dependen fundamentalemente de los privilegios de su propietario y del modo de ejecución.

##### Prioridades asignadas por el propietario
Es el usuario quien asigna la prioridad con la que un proceso deberá ejecutarse.

#### Clasificación de procesos
##### Procesos limitados por la entrada/salida
Son aquellos procesos que pasan más tiempo realizando entrada/salida que haciendo cálculos.
##### Procesos limitados por el CPU
Son aquellos procesos que pasan la mayor parte del tiempo haciendo cálculos, ocupando CPU.

#### Bloque de Control del Proceso (PCB)
Cada proceso tiene asociado un **PCB**, representado por un conjunto de datos como el estado, recursos utilizados, registros,  etc... y es creado junto con cada proceso nuevo. Un PCB tiene la funcion de **localizar la información del proceso por parte del sistema operativo y mantener registrados los datos del proceso** en caso de tener que suspender temporalmente la ejecución.

##### Información
Esta información se encuentra en la memoria principal del disco y se accede a ella en los momentos en que se hace necesaria su actualización o consulta. Los datos relativos al estado siempre se encuentran en la memoria principal.

|**Nombre**|**Descripción**|
|---------|---------|
|*PID*|Identificador del proceso|
|*Estado*|Espera, Corriendo, Listo, etc...|
|*Program Counter (PC)*|Información relativa al contenido del contador de programa|
|*Registros de CPU*|Archivos de registros en uso|
|*Información de iteración*|Información para el *calendarizador*. Contadores, relojes, prioridad, punteros a colas de ejecución|
|*Información de manejo de memoria*|Registros base y límite, tablas para manejo de memoria virtual, lista de páginas, etc...|
|*Información de contabilidad*|Tiempo de CPU utilizado, tiempo real utilizado, límites de tiempo, etc...|
|*Información sobre el estado de la entrada/salida*|Dispositivos asignados al proceso, lista de archivos abiertos, estado de esos archivos, etc...|
|*Credenciales*|UID, GID, PPID (identificadores de usuario y proceso)|

> Existe un Bloque de Control de Sistema (SCB) con objetivos similares al anterior, entre los que se encuentra el enlazado de los bloques de control de procesos existentes en el sistema. El cambio de contexto se producirá siempre que se requiera la atención de algún servicio del sistema operativo.

#### Conmutación de procesos
Es la operación que consiste en retirar el procesador a un proceso para dárselo a otro. Se produce por una de estas razones:
* Para garantizar la multiprogramación, si un proceso agota el tiempo máximo asignado de procesador, se dará paso al siguiente
* Un proceso está pendiente de un evento externo, por tanto pasa a estado bloqueado. El procesador deberá tomar uno nuevo de la pila de preparados
* Terminó la ejecución del proceso
* Se dió una interrupción desde un dispositivo de entrada/salida o por medio de una instrucción del CPU que interrumpe software

*Los pasos que siguen son los siguientes:*
* Pasar a modo privilegiado el CPU
* Guardar el contenido de los registros del hardware (*contexto de ejecución*) en el PCB
* Actualizar el estado del proceso en el PCB
* Si se produjo una interrupción, atenderla
* Seleccionar un nuevo proceso
* Restaurar el contexto de ejecución del nuevo proceso seleccionado. Si no estaba en el contexto de ejecución, inicializarlo
* Pasar a modo no privilegiado el CPU

> En cada iteración de ejecución/ocio, se guarda y se cargan los datos del PCB

### Hilo (thread)
Un **thread** es una una unidad básica de utilización de CPU. Un conjunto de hilos se denomina **tarea**. Un proceso puede tener varios hilos en ejecución y cada hilo realizará una tarea. La principal diferencia entre hilo y proceso es que los procesos tienen su propia **zona de memoria** mientras que los hilos de un proceso la comparten, además los hilos **no son independientes**.

> A los procesos normales se les llama **procesos pesados** mientras que a los hilos **procesos livianos**. Siendo un proceso pesado uno con un solo thread.

Un proceso está definido por sus recursos y por su ubicación en el espacio de memoria. Los threads comparten código, datos y otros recursos, pero pertenecen siempre al mismo proceso.

> Es más eficiente a la hora de realizar la misma tarea, el tener un proceso con varios threads que tener varios procesos.

### Comunicación
Los procesos pueden cooperar en la realización de una tarea. Una forma de cooperación es a través del **IPC** (Inter Process Communication). Este provee la forma a través de la cual los procesos se pueden comunicar y sincronizar.

#### Mensajes
La comunicación vía IPC no necesita compartir variables, solo requiere de dos operaciones como mínimo: Enviar y Recibir.

#### Tipos de comunicación
##### Comunicación directa
Cada proceso deberá explícitamente indicar el nombre del proceso fuente o del proceso de destino en el mensaje.

##### La interacción productor-consumidor
El proceso productor genera datos y el proceso consumidor los recibe para procesarlo.

##### Direccionamiento simétrico y asimétrico
Tanto el transmisor como el receptor deberán nombrarse explícitamente.

> Una variación consiste en que solo el transmisor señala el nombre del receptor y el receptor pone una variable.

##### Comunicación indirecta
Los mensajes se envían y reciben desde objetos llamados **mailbox**, cada uno de estos tiene una identificación única. Dos procesos solo se podrán comunicar si ambos comparten mailbox.

#### Aspectos de la comunicación
El sistema IPC requiere la comunicación entre dos procesos. Un enlace de comunicación puede considerarse una cola de mensajes, que se pueden implementar de dos formas:

##### Capacidad limitada y capacidad ilimitada
Es necesario señalar cuando un mensaje ha llegado a su destino, esto se puede hacer mediante un mensaje corto llamado **ACK** o **Sincronización con buffers**.

##### Rendez-vous
Comunicación directa entre procesos (solamente un enlace por cada par de procesos) y de capacidad cero (no se puede hacer nada mientras la petición no haya sido despachada)

###### Características:
* Encuentro simétrico (el que llega antes espera al otro)
* Encuentro simple (solo una transacción de información)
* Exclusión mutua (solo dos procesos en un encuentro)
* Doble sentido (puede haber información de ida y vuelta)

#### Problemas en la comunicación
* Interrupciones
* Los procesos se interponen
* El segundo tiene que esperar al primero

#### Compartir
En algunos sistemas operativos, los procesos que trabajan juntos pueden compartir algo de almacenamiento común que cada uno podrá leer y escribir. 

> El almacenamiento compartido puede ser en la memoria principal o un archivo compartido.

##### Sincronización de procesos
Cuando procesos cooperan en una tarea se denominan **procesos cooperativos** y necesitarán compartir datos.

> El acceso concurrente a datos puede generar inconsistencias difíciles de detectar.

#### Problemas: región crítica
 Si tomamos de ejemplo el `modelo productor-consumidor`, ambos tendrán acceso a una parte del código con sus respectivas variables compartidas, a esto se le denomina región crítica. Se necesitan ciertas condiciones para tener una buena solución:
* No pueden existir dos procesos simultaneamente dentro de sus regiones críticas
* No se pueden hacer suposiciones sobre las velocidades o el número de CPU
* Ningún proceso que se ejecute fuera de su región crítica puede bloquear ningún proceso
* Ningún proceso debería tener que esperar indefinidamente para ingresar a su región crítica

### Calendarización
Son las técnicas utilizadas para decidir cuánto tiempo de ejecución y en que momento se le asigna a cada proceso del sistema.

#### Niveles de planificación
Generalmente se identifican: alto, medio y bajo.

##### Nivel alto
Decide que conjunto de procesos es candidato a recibir recursos del sistema.

##### Nivel intermedio
Decide que procesos se suspenden o reanudan para lograr ciertas metas de rendimiento.

##### Nivel bajo
Decide que proceso, de los que ya están listos, es ejecutado.

#### Objetivos de la planificación
Una estrategia de planificación debe buscar que los procesos obtengan sus turnos de ejecución adecuadamente, con un buen rendimiento y minimizando la sobrecarga del planificador, que se reducen a estos cinco objetivos:

|**Objetivo**|**Definición**|
|:-----------|:-------------|
|*Justicia o imparcialidad*|Todos los procesos son tratados de la misma forma|
|*Maximizar la producción*|El sistema deberá finalizar la mayor cantidad de procesos posibles por unidad de tiempo|
|*Maximizar el tiempo de respuesta*|El usuario siempre deberá ver al sistema respondiendo a sus peticiones|
|*Evitar el aplazamiento indefinido*|Los procesos deben terminar en un plazo finito de tiempo|
|*El sistema debe ser predecible*|Si se ejecuta el mismo proceso en cargas similares de todo el sistema, la respuesta en todos lo casos debe ser similar|

##### Planificación apropiativa
Una vez que a un proceso entra en ejecución ya **no puede ser suspendido**.

> Es peligroso ya que puede llegar a aplazar procesos indefinidamente si es un bucle infinito.

##### Planificación no apropiativa
En esta existe un reloj que lanza interrupciones periódicas en las cuales el planificador toma el control y se decide si el mismo proceso seguirá ejecutándose o se le cederá su turno a otro.

> Este reloj también sirve para lanzar procesos manejados por el reloj del sistema.

#### Planeadores - Itineradores
* El objetivo de la **multiprogramación** es maximizar la utilización del CPU
* El objetivo de un sistema de **tiempo compartido** es conmutar el CPU de forma rápida para que todos los usuarios puedan interactuar con la aplicación
* Cuando un proceso entra al sistema es puesto en una cola de tareas
* Los procesos que residen en memoria y están listos para ser ejecutados están en la **cola de preparados**
* Los procesos que están a la espera por dispositivos de entrada/salida están en la **cola de dispositivos**
* El CPU despacha procesos de la cola de preparados
* Un proceso puede pasar por varias colas durante su ciclo de vida
* La selección de un proceso la hace el planeador
* Existen dos planeadores:
  * *De tareas*: Selecciona un proceso del disco y lo carga en memoria
  * *De CPU*: Selecciona un proceso de la cola ready y le asigna CPU

##### Itinerador de tareas
* Actúa menos frecuentemente que el itinerador de CPU. Este controla el grado de multiprogramación, el número de tareas en memoria
* Si el grado de multiprogramación es estable, la tasa de creación de procesos es igual a la tasa de procesos que terminan.
* Cuando la CPU no tiene tareas pendientes, el itinerador selecciona un proceso de la cola de preparados.

> La cola de preparados no es necesariamente FIFO, su estructura varía según el algoritmo de itineración.

##### Itinerador de CPU
* El itinerador del CPU actúa frecuentemente. Normalmente un proceso solo ocupa la CPU durante milisegundos antes de esperar por entrada/salida
* El itinerador de CPU debe ser muy eficiente. Si normalmente un proceso toma 100ms antes de la entrada/salida, el tiempo que toma el itinerador no debe superar 10ms
