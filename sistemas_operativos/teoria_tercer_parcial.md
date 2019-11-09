# Cuestionario de Sistemas Operativos (Unidad III)
## Explique la diferencia entre dispositivos de bloques y dispositivos de caracteres.
### Dispositivo de bloque
* Almacena información en tamaños de bloque fijos, cada uno en dirección propia.
* Se pueden direccionar (se puede leer o escribir cualquier bloque realizando una operación de posicionamiento sobre el dispositivo).

> Los dispositivos más comunes orientados a bloques son los discos duros, la memoria, discos compactos...

### Dispositivos de caracteres
* No son direccionables.
* La información es transferida como un flujo de caracteres.

> Los dispositivos más comunes orientados a caracteres son impresoras, teclado y raton.

## Explique el funcionamiento de la DMA (Acceso directo a la Memoria)
1. El driver se informa que debe transferir datos del disco a la dirección X.
2. El driver informa al controlador del disco que debe transferir C Bytes del disco al buffer en X.
3. El constrolador de disco inicia transferencia DMA.
4. El controlador de disco envía cada byte al controlador de DMA.
5. El controlador DMA transfiere bytes a X incrementando la dirección de memoria y decrementando C en cada paso hasta que valga 0.
6. Cuando C valga 0 el DMA interrumpe la CPU informando que la transferencia ha sido completada.

## Explique brevemente la función de las capas de software de E/S
|Capa|Función|
|---|---|
|Proceso del usuario|
* Solicitud de entrada/salida
* Replica de E/S|
