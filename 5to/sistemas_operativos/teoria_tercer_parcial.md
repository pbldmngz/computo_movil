# Cuestionario de Sistemas Operativos (Unidad III)
## 1. Explique la diferencia entre dispositivos de bloques y dispositivos de caracteres.
### Dispositivo de bloque
* Almacena información en tamaños de bloque fijos, cada uno en dirección propia.
* Se pueden direccionar (se puede leer o escribir cualquier bloque realizando una operación de posicionamiento sobre el dispositivo).

> Los dispositivos más comunes orientados a bloques son los discos duros, la memoria, discos compactos...

### Dispositivos de caracteres
* No son direccionables.
* La información es transferida como un flujo de caracteres.

> Los dispositivos más comunes orientados a caracteres son impresoras, teclado y raton.

## 2. Explique el funcionamiento de la DMA (Acceso directo a la Memoria)
1. El driver se informa que debe transferir datos del disco a la dirección X.
2. El driver informa al controlador del disco que debe transferir C Bytes del disco al buffer en X.
3. El constrolador de disco inicia transferencia DMA.
4. El controlador de disco envía cada byte al controlador de DMA.
5. El controlador DMA transfiere bytes a X incrementando la dirección de memoria y decrementando C en cada paso hasta que valga 0.
6. Cuando C valga 0 el DMA interrumpe la CPU informando que la transferencia ha sido completada.

## 3. Explique brevemente la función de las capas de software de E/S
|Capa|Función|
|---|---|
|Proceso del usuario|Solicitud de entrada/salida y Replica de E/S, Hace llamadas a E/S y le da formato|
|Software independiente del dispositivo|Nombre, protección, bloqueo, uso de buffer, asignación|
|Manejadores de dispositivo|Conforma los registros del dispositivo y verifica el estado|
|Manejadores de introducciones|Despierta al manejador al terminar la E/S|
|Hardware|Lleva a cabo la operación de E/S|

## 4. Una unidad de E/S consta de dos componentes: uno electrónico (que es la tarjeta controladora del dispositivo) y uno mecánico (que es el dispositivo mismo). Para el caso específico de un disco magnético, ¿Cómo funciona la controladora?
El controlador de un disco magnético tendría que traducir la instrucción de bits a bloques de bytes, después se lo comunica a la cpu y al finalizar generaría una interrupción para que el SO verifique que todo está bien o el cpu obtenga el control.

## 5. ¿Cuáles son los tres métodos para el manejo de E/S?
* Polling
* Manejo de interrupciones
* Direct Memory Access (DMA)

## 6. Explique el manejo de interrupciones
Consiste en el que el usuario no se percate de que el dispositivo fue suspendido a la hora de sincronizar una tarea.

## 7. ¿En qué consiste el algoritmo de Polling?
Realiza una operación de consulta constante hacia un dispositivo de hardware, para crear una actividad sin usar interrupciones.

## 8. ¿Cuáles son las funciones del reloj?
* Sincronización de procesos.
* Controlar tiempos de ejecución.
* Calendarización.
* Despertar procesos dormidos.

## 9. De acuerdo a lo anterior, explique la planificación de discos así como los algoritmos de planificación de discos.

## 10. Existen comandos para visualizar hardware en Linux, describa algunos.
* **lscpu:** informa sobre la CPU
* **lshw -short:** información breve y detallada sobre unidades de hardware
* **hwinfo:** descripción más extensa que lshw

