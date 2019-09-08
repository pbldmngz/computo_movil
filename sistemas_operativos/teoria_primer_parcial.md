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
|:-------------------------------|
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

La creación de un proceso puede ser de dos tipos, la arcaica y poco usada actualmente, **"no jerárquica"** y la **"jerárquica"**. En esta última, el proceso creado es hijo del proceso anterior y hereda el entorno de ejecución de su padre. Un proceso hijo puede a su vez ser padre de otras tareas, formando así una **jerarquía de procesos**.

> El primer proceso que ejecuta un usuario será hijo del intérprete de comandos con el que interactúa.

Un proceso padre tiene dos opciones para compartir recursos, puede continuar ejecutandose de forma concurrente o esperar a que sus hijos terminen. O en ciertos casos puede obtener recursos directamente del sistema operativo.

##### Destruír un proceso
Se envía la orden de eliminación del proceso, con la cual el sistema operativo destruye su **PCB**.
Un proceso pide al sistema operativo que lo elimine cuando se da por terminado, al hacerlo, todos los recursos se devuelven al sistema. Un proceso se puede dar por terminado en estos casos:
* Se ejecutó la última sentencia
* Un proceso decide terminar
* Un proceso decide matar a otro
* Un proceso padre puede matar a sus hijos

##### Suspender un proceso
Paraliza un proceso que más tarde puede ser reanidado. Se suele utilizar en situaciones de mal funcionamiento o sobrecarga.

##### Reanudar un proceso
Tratar de activar un proceso suspendido previamente.

##### Temporizar la ejecución de un proceso
Hace que un proceso se ejecute cada cierto tiempo.

##### Despertar un proceso
Es una forma de desbloquear un proceso que había sido previamente bloqueado.

#### Prioridades
Todo proceso lleva integradas ciertas necesidades de ejecución en cuanto a urgencia y asignación de recursos. Estas **prioridades** se pueden clasificar como **asginadas** por el **sistema** operativo o por el **propietario**. También se separan en **estáticas** y **dinámicas**, siendo no modificables y modificables, respectivamente.

##### Prioridades asignadas por el sistema operativo
La prioridad fue asignada al proceso en el momento de comenzar su ejecución y dependen fundamentalemente de los privilegios de su propietario y del modo de ejecución.

##### Prioridades asignadas por el propietario
Es el usuario queien asigna la prioridad con la que un proceso deberá ejecutarse.

#### Clasificación de procesos
*Procesos limitados por la entrada/salida*
 * Son aquellos procesos que pasan más tiempo realizando entrada/salida que haciendo cálculos.
*Procesos limitados por el CPU*
