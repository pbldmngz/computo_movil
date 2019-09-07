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

Además el kernel es encargado de proporcionar:
* Protección mediante **niveles de acceso**
* Acceso compartido a los recursos, algunas CPU los dividen en *rings*

|**Capas de un sistema operativo**|
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




