Algoritmo cuenta_grupo
	Definir cantBicicletas, horasAlquiler, cantPersonas Como Entero
	Definir precioRecorrido, costoAlquiler, costoRecorrido Como Real
	Definir subtotal, aporteVoluntario, totalGeneral, valorExactoPersona, valorPorPersona Como Real
	Definir PRECIO_HORA Como Entero
	PRECIO_HORA <- 10000
	Escribir 'Ingrese la cantidad de bicicletas urbanas alquiladas:'
	Leer cantBicicletas
	Escribir 'Ingrese la cantidad de horas de alquiler:'
	Leer horasAlquiler
	Escribir 'Ingrese el precio por persona del recorrido guiado seleccionado:'
	Leer precioRecorrido
	Escribir 'Ingrese la cantidad de personas en el grupo:'
	Leer cantPersonas
	costoAlquiler <- cantBicicletas*horasAlquiler*PRECIO_HORA
	costoRecorrido <- cantPersonas*precioRecorrido
	subtotal <- costoAlquiler+costoRecorrido
	aporteVoluntario <- subtotal*0.10
	totalGeneral <- subtotal+aporteVoluntario
	valorExactoPersona <- totalGeneral/cantPersonas
	valorPorPersona <- trunc((valorExactoPersona+99)/100)*100
	// Salida de resultado
	Escribir '============================================='
	Escribir '   ASISTENTE DE TAQUILLA RUEDA LIBRE (v0.1)  '
	Escribir '============================================='
	Escribir 'Costo total alquiler bicicletas: $', costoAlquiler
	Escribir 'Costo total recorrido guiado:    $', costoRecorrido
	Escribir 'Subtotal del grupo:              $', subtotal
	Escribir 'Aporte voluntario (10%):         $', aporteVoluntario
	Escribir '---------------------------------------------'
	Escribir 'TOTAL GENERAL A PAGAR:           $', totalGeneral
	Escribir '---------------------------------------------'
	Escribir 'Cuota por persona (redondeada):  $', valorPorPersona
	Escribir '============================================='
FinAlgoritmo
