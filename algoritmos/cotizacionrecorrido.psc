Algoritmo cotizacion_recorrido
	Definir nombreRecorrido Como Cadena
	Definir precioPersona, cantidadPersonas, valorTotal, anticipo, saldoPendiente Como Real
	Escribir 'Ingrese el nombre del recorrido guiado (ej. Río y Parques, Sabores de Barrio, Palmas):'
	Leer nombreRecorrido
	Escribir 'Ingrese el precio por persona del recorrido:'
	Leer precioPersona
	Escribir 'Ingrese la cantidad de personas del grupo:'
	Leer cantidadPersonas
	valorTotal <- cantidadPersonas*precioPersona
	anticipo <- redon(valorTotal*0.30)
	saldoPendiente <- valorTotal-anticipo
	Escribir '--- RESUMEN DE COTIZACIÓN: RECORRIDO GUIADO ---'
	Escribir 'Recorrido seleccionado: ', nombreRecorrido
	Escribir 'Valor total del grupo: $', valorTotal
	Escribir 'Anticipo requerido (30%): $', anticipo
	Escribir 'Saldo pendiente para el día del recorrido: $', saldoPendiente
FinAlgoritmo
