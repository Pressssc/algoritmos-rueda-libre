Bitacora de Algoritmia 

Proceso para alquilar una bicicleta en Rueda Libre desde que el cliente llega hasta que sale del local:

1 El cliente llega al mostrador de la tienda.
2 La persona de taquilla saluda al cliente y le pregunta que tipo de bicicleta desea alquilar y por cuanto tiempo.
3 Se verifica cuantas bicicletas hay disponibles de ese tipo.
4 Se le pide al cliente su documento de identidad original.
5 Se calcula el valor total del alquiler segun las horas solicitadas.
6 El cliente paga el valor correspondiente en efectivo o tarjeta.
7 La persona de taquilla recibe el pago y entrega el recibo de pago.
8 Se entrega una bicicleta en buen estado, un casco y un candado de seguridad al cliente.
9 El cliente se retira del local con su equipo completo.

---

2.Deteccion de ambigueedades 
Al intercambiar los pasos anteriores con un companero y seguirlos de manera literal, se encontraron los siguientes puntos ambiguos:
Paso 3: No se especificaba que hacer si no habia bicicletas disponibles del tipo solicitado. El proceso se quedaba colgado o no definia una salida.
Paso 4: No se indicaba en que momento exacto se validaba si el documento de identidad era valido o si el cliente cumplia con la mayoria de edad o las condiciones para alquilar.
Paso 6: No se aclaraba si el pago se realizaba antes o despues de entregar el equipo, lo que generaba confusion en el orden de cobro.

---

3 Algoritmo corregido y definitivo
Proceso optimizado y sin ambigueedades para el alquiler de bicicletas:

1 Inicio.
2 El cliente se presenta en el mostrador y solicita el alquiler de una bicicleta.
3 La persona de taquilla pregunta al cliente el tipo de bicicleta deseado y el tiempo de alquiler en horas.
4 La persona de taquilla consulta el inventario fisico y del sistema para verificar la disponibilidad de ese tipo de bicicleta.
5 Decision: ¿Hay bicicletas disponibles del tipo solicitado?
   - Si la respuesta es NO: La persona de taquilla informa amablemente al cliente que no hay disponibilidad en este momento, se le invita a reservar para otra fecha u otro tipo de bicicleta, y el algoritmo termina.
    Si la respuesta es SI: Se continua con el siguiente paso.
6 La persona de taquilla solicita al cliente su documento de identidad original y verifica que cumpla con los requisitos minimos de alquiler.
7 La persona de taquilla calcula el costo total del alquiler multiplicando las horas por la tarifa correspondiente.
8 El cliente entrega el pago total (efectivo o tarjeta) y la taquilla procesa la transaccion entregando el recibo.
9 La persona de taquilla selecciona la bicicleta correspondiente, revisa que este en optimas condiciones y entrega fisicamente al cliente una bicicleta, un casco y un candado.
10 El cliente recibe los implementos de seguridad y sale del establecimiento.
11 Fin.


justificacion
Precision: Cada instruccion en la version corregida esta escrita de forma inequivoca, por ejemplo, el calculo del costo (Paso 7) indica exactamente como obtener el valor multiplicando horas por tarifa.
Finitud: El algoritmo cuenta con un numero finito de pasos y siempre tiene un final claro, ya sea porque el cliente recibe su bicicleta con exito o porque se le informa la falta de disponibilidad y se cierra el proceso (Paso 5).
orden: Los pasos siguen una secuencia logica y cronologica estricta; por ejemplo, es obligatorio verificar la disponibilidad (Paso 4-5) y cobrar (Paso 8) antes de entregar fisicamente la bicicleta y los accesorios (Paso 9).
Determinismo: Ante las mismas entradas de datos (ej. un tipo de bicicleta disponible y las horas exactas), el proceso y el resultado del calculo o la ruta a seguir seran siempre exactamente iguales.
Efectividad: Todas las operaciones y ordenes descritas (verificar inventario, cobrar, entregar elementos) son realizables de forma practica por cualquier persona en la taquilla utilizando los recursos disponibles.

---

5 pilares del pensamiento computacional aplicados
Descomposicion: Se dividio el problema global de "atender a un cliente" en pequenas tareas manejables: recepcion de requerimiento, verificacion de inventario, validacion de identidad, calculo de cobro y entrega de equipos.
Reconocimiento de patrones: Se identifico que cada vez que llega un cliente al mostrador, los pasos de saludo, consulta de disponibilidad, cotizacion y entrega se repiten de forma identica, lo que permite automatizarlos en un sistema.
Abstraccion: Se ignoraron detalles irrelevantes para la logica del sistema de taquilla (como la vestimenta del cliente o la marca exacta del casco), enfocandose unicamente en las variables clave (tipo de bicicleta, tiempo, dinero y documentos).
Algoritmo: Es la secuencia logica final estructurada en los pasos del 1 al 11 que permite estandarizar el proceso sin importar quien atienda en la taquilla.


cotizacion

tabla de entrada 
| Entrada (Datos a leer) | Proceso (Calculos) | Salida (Datos a mostrar) |
| :--- | :--- | :--- |
| * `nombreCliente` (Caracter)<br>* `horasAlquiler` (Entero) | * Definir la constante del precio por hora: `PRECIO_HORA = 10000`<br>* Calcular el costo total: `totalPagar = horasAlquiler * PRECIO_HORA` | * Mensaje personalizado con el nombre del cliente, las horas y el valor total a pagar. |

casos de prueba
 Caso 1:
  Entrada: 1 hora (`Ana`)
  resultado esperado (a mano): $10.000
  Resultado obtenido: $10.000 (Prueba exitosa)
 Caso 2:
   Entrada: 3 horas (`Carlos`)
   Resultado esperado (a mano): $30.000
   Resultado obtenido: $30.000 (Prueba exitosa)
 Caso 3:
   Entrada: 8 horas (`Lucia`)
   Resultado esperado (a mano): $80.000
   Resultado obtenido: $80.000 (Prueba exitosa)

observacion sobre casos 
Si la persona de taquilla ingresa `0` o un numero negativo de horas, el algoritmo actual realiza la multiplicacion matematica (dando 0 o valores negativos), lo cual no tiene sentido fisico para un alquiler. Este problema se dejara pendiente y se corregira en la Semana 2 implementando estructuras de decision.


recorridos guiados y dragramas

prueba de escritorio
* Caso de prueba: Grupo de 4 personas en el recorrido Sabores de Barrio.
* Datos iniciales:
  * `nombreRecorrido` = "Sabores de Barrio"
  * `precioPersona` = 60000
  * `cantidadPersonas` = 4

| Instruccion ejecutada | `nombreRecorrido` | `precioPersona` | `cantidadPersonas` | `valorTotal` | `anticipo` (30%) | `saldoPendiente` |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: |
| Lectura de variables | "Sabores de Barrio" | 60000 | 4 | - | - | - |
| `valorTotal <- cantidadPersonas * precioPersona` | "Sabores de Barrio" | 60000 | 4 | 240000 | - | - |
| `anticipo <- redon(valorTotal * 0.30)` | "Sabores de Barrio" | 60000 | 4 | 240000 | 72000 | - |
| `saldoPendiente <- valorTotal - anticipo` | "Sabores de Barrio" | 60000 | 4 | 240000 | 72000 | 168000 |

* Resultado final obtenido: Valor total: $240.000, Anticipo (30%): $72.000, Saldo pendiente: $168.000. Coincide perfectamente con los resultados esperados.

identificacion de simbolos del diagrama 

Al exportar el diagrama desde PSeInt, se identificaron los siguientes componentes principales:
Inicio y Fin: Representados por ovalos que delimitan el flujo del algoritmo.
 Entrada / Salida: Representados por paralelogramos utilizados para leer los datos del usuario (nombre del recorrido, precio, personas) y mostrar los resultados en pantalla.
 Proceso: Representados por rectangulos donde se realizan los calculos matematicos (multiplicacion del total, calculo del anticipo con la funcion de redondeo y resta del saldo).


cuenta del grupo

descomposicion del problema

Para resolver el calculo de la cuenta total del grupo y su division entre personas, el problema se descompuso en los siguientes pasos secuenciales:
1 Entrada de datos: Lectura de la cantidad de bicicletas urbanas, las horas de alquiler, el precio por persona del recorrido guiado y la cantidad de personas en el grupo.
2 Calculo del alquiler: Multiplicar la cantidad de bicicletas por las horas solicitadas y por la tarifa fija ($10.000/hora).
3 Calculo del recorrido: Multiplicar la cantidad de personas por el precio unitario del recorrido guiado seleccionado.
4 Calculo del subtotal: Sumar el valor total del alquiler de bicicletas y el valor del recorrido.
5 Calculo del aporte voluntario: Multiplicar el subtotal por el 10% (0.10).
6 Calculo del total general: Sumar el subtotal y el aporte voluntario.
7 Calculo exacto por persona: Dividir el total general entre la cantidad de personas del grupo.
8 Redondeo hacia arriba a la centena: Aplicar la formula matematica utilizando la funcion `trunc` para garantizar que la cuota por persona sea un multiplo de 100 mayor o igual al valor exacto (facilitando el cambio en efectivo).


redondeo 

Para redondear cualquier valor X hacia arriba a la centena mas cercana (por ejemplo, $33.334 a $33.400), se utilizo la siguiente expresion en PSeInt:

`valorPorPersona <- trunc((valorExacto + 99) / 100) * 100`

Explicacion de su funcionamiento:
 Al sumar 99 al valor exacto X, cualquier residuo mayor a 0 provoca un cambio a la siguiente centena entera.
 Al realizar la division entera o truncamiento `trunc(...) / 100`, eliminamos la parte decimal quedandonos solo con la cantidad de centenas requeridas.
 Al multiplicar finalmente por 100, devolvemos la cifra redondeada hacia arriba a su posicion de centenas exacta en pesos (multiplo de 100).

---

casos de prueba registrados

 Caso 1: 3 personas, 3 bicicletas por 2 horas y recorrido Rio y Parques ($45.000/persona):
   Alquiler: 3 * 2 * 10.000 = $60.000
   Recorrido: 3 * 45.000 = $135.000
   Subtotal: $195.000
   Aporte voluntario (10%): $19.500
   Total general: $214.500
   Valor por persona: $214.500 / 3 = $71.500 (Multiplo exacto de 100)
   Resultado obtenido: Coincide ($214.500 total, $71.500 por persona)

Caso 2: 4 personas, 3 bicicletas por 3 horas y recorrido Sabores de Barrio ($60.000/persona):
   Alquiler: 3 * 3 * 10.000 = $90.000
   Recorrido: 4 * 60.000 = $240.000
   Subtotal: $330.000
   Aporte voluntario (10%): $33.000
  Total general: $363.000
   Valor exacto por persona: $363.000 / 4 = $90.750
  Valor redondeado a la centena: $90.800
   Resultado obtenido: Coincide ($363.000 total, $90.800 por persona)

 Caso 3 (Disenado libremente): 2 personas, 2 bicicletas por 1 hora y recorrido Reto Las Palmas ($85.000/persona):
   Alquiler: 2 * 1 * 10.000 = $20.000
   Recorrido: 2 * 85.000 = $170.000
   Subtotal: $190.000
   Aporte voluntario (10%): $19.000
   Total general: $209.000
   Valor exacto por persona: $209.000 / 2 = $104.500
   Resultado obtenido: Coincide ($209.000 total, $104.500 por persona)
