'From VisualWorks® Personal Use Edition, 7.9.1 of 18 de octubre de 2012 on 20 de junio de 2013 at 16:51:31'!


CodeComponent create: #package named: 'Apalabrados-model'!"Package Apalabrados-model*"!


Object subclass: #Jugador
	instanceVariableNames: 'nombre palabras puntos misFichas juego jugada paso misFcar '
	classVariableNames: ''
	poolDictionaries: ''
	category: ''!

Jugador class
	instanceVariableNames: ''!

Jugador comment:
'Jugador representa al jugador

Instance Variables
	nombre	<Object | ProtoObject>	description of nombre
	palabras	<Object | ProtoObject>	description of palabras
	puntos	<Object | ProtoObject>	description of puntos

'!

Object subclass: #Casilla
	instanceVariableNames: 'tipo ocupada posicion valor simbolo color '
	classVariableNames: ''
	poolDictionaries: ''
	category: ''!

Casilla class
	instanceVariableNames: ''!

Casilla comment:
'Representa cada casilla del tablero

'!

Casilla subclass: #CasillaNormal
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: ''!

CasillaNormal class
	instanceVariableNames: ''!

CasillaNormal comment:
'CasillaNormal representa una casilla normal

'!

Object subclass: #Idioma
	instanceVariableNames: 'idioma alfabeto diccionario listadoLetras fichas rutaDiccionario '
	classVariableNames: ''
	poolDictionaries: ''
	category: ''!

Idioma class
	instanceVariableNames: ''!

Idioma comment:
'La clase Idioma representa el idioma del juego (español, inglés, etc)

Instance Variables:
	alfabeto	<Object>	description of alfabeto
	diccionario	<Object>	description of diccionario
	idioma	<Object>	description of idioma

'!

Object subclass: #LetraConcreta
	instanceVariableNames: 'letra colocada posicion '
	classVariableNames: ''
	poolDictionaries: ''
	category: ''!

LetraConcreta class
	instanceVariableNames: ''!

LetraConcreta comment:
'Representa a cada letra concreta (por ejemplo, si tenemos 10 A o 3 B)

Instance Variables:
	letra	<Object>	description of letra

'!

Object subclass: #Diccionario
	instanceVariableNames: 'listaPalabras rutaDiccionario '
	classVariableNames: ''
	poolDictionaries: ''
	category: ''!

Diccionario class
	instanceVariableNames: ''!

Diccionario comment:
'Esta clase se encarga de comprobar si una palabra es válida

'!

Casilla subclass: #CasillaTP
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: ''!

CasillaTP class
	instanceVariableNames: ''!

CasillaTP comment:
'CasillaTP el valor de la palabra multiplicado por 3

'!

Casilla subclass: #CasillaDL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: ''!

CasillaDL class
	instanceVariableNames: ''!

CasillaDL comment:
'CasillaDL el valor de la letra multiplicado por 2

'!

Object subclass: #Palabra
	instanceVariableNames: 'fichas palabra confirmada '
	classVariableNames: ''
	poolDictionaries: ''
	category: ''!

Palabra class
	instanceVariableNames: ''!

Palabra comment:
'Palabra almacena las palabras y las fichas de una palabra de una jugada

Instance Variables
	fichas	<MessageForwarder | Object | ProtoObject | ProtoObject>	description of fichas
	palabra	<MessageForwarder | Object | ProtoObject | ProtoObject>	description of palabra

'!

Casilla subclass: #CasillaTL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: ''!

CasillaTL class
	instanceVariableNames: ''!

CasillaTL comment:
'CasillaTL el valor de la letra multiplicado por 3

'!

Object subclass: #Juego
	instanceVariableNames: 'jugador1 jugador2 turno tablero fichas diccionario idioma palabrasJugada status '
	classVariableNames: ''
	poolDictionaries: ''
	category: ''!

Juego class
	instanceVariableNames: ''!

Juego comment:
'Sirve para inicializar el juego

'!

Object subclass: #Tablero
	instanceVariableNames: 'tablero limiteX limiteY colTablero '
	classVariableNames: ''
	poolDictionaries: ''
	category: ''!

Tablero class
	instanceVariableNames: ''!

Tablero comment:
'Represanta al tablero del juego

'!

Casilla subclass: #CasillaDP
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: ''!

CasillaDP class
	instanceVariableNames: ''!

CasillaDP comment:
'CasillaDP el valor de la palabra multiplicado por 2

'!

Casilla subclass: #CasillaInicio
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: ''!

CasillaInicio class
	instanceVariableNames: ''!

CasillaInicio comment:
'CasillaInicio la primera palabra utiliza esta casilla

'!

Object subclass: #Letra
	instanceVariableNames: 'simbolo valor contador simbolo2 '
	classVariableNames: ''
	poolDictionaries: ''
	category: ''!

Letra class
	instanceVariableNames: ''!

Letra comment:
'La clase Letra se utiliza para crear cada una de las letras
Instance Variables:
	simbolo	<Object>	description of simbolo
	valor	<Object>	description of valor

'!

!Juego class methodsFor: 'instance creation' stamp: ' 20/6/13 16:51'!

new
	"Answer a newly created and initialized instance."
	
	^super new initialize! !


!Juego methodsFor: 'accessing' stamp: ' 20/6/13 16:51'!

pasar: unJugador
	
	self turno = unJugador
		ifFalse:
			[self
				status: 'No es tu turno';
				cr]
		ifTrue:
			[self condicionFinal
				ifTrue: [self status: 'Ha ganado el jugador ']
				ifFalse: [self cambiarTurno]]!

obtenerListaFichas: unaJugada
	
	| palabras palabrasH palabrasV pal orientacion listaFichas ind |
	palabrasH := Set new.
	palabrasV := Set new.
	palabras := List new.
	listaFichas := List new.
	pal := List new.
	ind := 1.
	orientacion := ''.
	orientacion := self comprobarOrientacion: unaJugada.
	unaJugada
		do:
			[:each | 
			pal := tablero obtenerPalabraHorizontal: each.
			(pal at: 1) = ''
				ifFalse:
					[palabrasH add: (pal at: 1).
					palabras
						at: ind
						put: (pal at: 1).
					listaFichas
						at: ind
						put: (pal at: 2).
					ind := ind + 1].
			pal := tablero obtenerPalabraVertical: each.
			(pal at: 1) = ''
				ifFalse:
					[palabrasV add: (pal at: 1).
					palabras
						at: ind
						put: (pal at: 1).
					listaFichas
						at: ind
						put: (pal at: 2).
					ind := ind + 1]].
	orientacion = 'vertical' & (palabrasV size = 1)
		| (orientacion = 'horizontal' & (palabrasH size = 1))
		ifFalse:
			[Transcript
				show: 'letras mal colocadas';
				cr.
			^palabras].	" palabrasH do: [:each | palabras add: each].
	palabrasV do: [:each | palabras add: each]."	"	^palabras"
	^listaFichas!

calcularPuntosJugada: listaPalabras
	"unaJugada tiene las fichas del jugador, hay que añadir las fichas con la que forma la palabra o palabras"
	
	| res celda fi |
	res := 0.
	celda := 0.
	fi := 0.
	listaPalabras
		do:
			[:each | 
			each confirmada
				ifTrue:
					[each fichas
						do:
							[:otro | 
							celda := (tablero obtenerCeldaEn: otro posicion) valor.
							fi := otro letra valor.
							res := res + (celda * fi)]]].
	^res!

comprobarHorizontal: listaPuntos
	"comprueba si la palabra se ha puesto con orientación vertical"
	
	| fil |
	fil := (listaPuntos at: 1) y.
	listaPuntos do: [:each | fil = each y ifFalse: [^false]].
	^true!

obtenerCeldaEn: unPunto
	
	^self tablero obtenerCeldaEn: unPunto!

obtenerFichaEn: unPunto
	
	^self tablero obtenerFichaEn: unPunto!

colocarFichasJugada: unaJugada de: unJugador
	
	self turno = unJugador
		ifTrue:
			[unaJugada
				do:
					[:each | 
					self tablero
						ponerFicha: each
						en: each posicion]]
		ifFalse:
			["Transcript show:'no es tu turno';cr."
			self status: 'no es tu turno']!

status
	
	^status!

turno
	
	^turno!

cambiarTurno
	
	turno = self jugador1
		ifTrue: [self turno: self jugador2]
		ifFalse: [self turno: self jugador1].
	palabrasJugada := List new!

comprobarVertical: listaPuntos
	"comprueba si la palabra tiene orientación horizontal"
	
	| col |
	col := (listaPuntos at: 1) x.
	listaPuntos do: [:each | col = each x ifFalse: [^false]].
	^true!

palabrasJugada: unaLista
	
	palabrasJugada := unaLista!

quitarFichaEn: unPunto
	
	self tablero quitarFichaEn: unPunto!

tablero: unTablero
	
	tablero := unTablero!

idioma: unIdioma
	
	idioma := unIdioma!

comprobarPalabra: unaJugada
	
	| palabra |
	palabra := ''.
	unaJugada
		do: [:each | palabra := palabra , each letra simbolo asLowercase].
	(self diccionario buscarPalabra: palabra)
		ifTrue: [^true]
		ifFalse: [^false]!

jugador2
	
	^jugador2!

turno: unJugador
	
	turno := unJugador!

tablero
	
	^tablero!

diccionario
	
	^diccionario!

fichasBienColocadas: unaJugada
	
	| listaPuntos |
	listaPuntos := List new.
	unaJugada do: [:each | listaPuntos add: each posicion].
	(self comprobarHorizontal: listaPuntos)
		| (self comprobarVertical: listaPuntos)
		ifFalse:
			[Transcript show: 'palabra mal colocada'.
			^false].	"¿tiene vecinos o usa la posición 8@8?"
	^true!

pasarTurno
	
	self turno = self jugador1
		ifTrue: [self turno: self jugador2]
		ifFalse: [self turno: self jugador1]!

confirmarJugadaDe: unJugador
	
	| suma |
	suma := 0.
	self turno = unJugador
		ifFalse:
			["Transcript show:'No es tu turno';cr."
			self status: 'No es tu turno'.
			^suma].
	self palabrasJugada size = 0
		ifTrue:
			[self status: 'No hay jugada'.
			^suma].
	self palabrasJugada
		do:
			[:each | 
			each confirmada
				ifFalse:
					[self status: 'Jugada no válida'.
					^suma]].
	suma := self calcularPuntosJugada: self palabrasJugada.
	suma := suma + self turno puntos.
	self turno puntos: suma.
	self condicionFinal
		ifTrue:
			["			Transcript show:'El juego ha terminado ';cr.
			Transcript show:'Puntos jugador1: ',self jugador1 puntos;cr.
			Transcript show:'Puntos jugador2: ',self jugador2 puntos;cr."
			self status: 'El juego ha terminado'.
			self turno: nil]
		ifFalse:
			[self status: 'Cambio de turno'.
			self cambiarTurno].
	self tablero imprimirTablero.
	^suma!

existePalabra: unaPalabra
	
	^diccionario buscarPalabra: unaPalabra!

dameFichas: unNum
	
	| subFichas rand item restantes numFichas |
	numFichas := 0.
	fichas size < unNum
		ifTrue: [numFichas := unNum - fichas size]
		ifFalse: [numFichas := unNum].
	subFichas := Set new.
	1
		to: numFichas
		do:
			[:ind | 
			restantes := fichas asArray.
			rand := Random new.
			rand := rand nextValue * restantes size + 1.
			rand := rand asInteger.
			item := fichas
				detect:
					[:each | each letra simbolo = (restantes at: rand) letra simbolo]
				ifNone: [nil].
			item = nil
				ifFalse:
					[subFichas add: item.
					fichas remove: item]
				ifTrue:
					[Transcript show: 'Error al seleccionar fichas de forma aleatoria']].
	^subFichas!

palabrasJugada
	
	^palabrasJugada!

diccionario: unDiccionario
	
	diccionario := unDiccionario!

jugador1
	
	^jugador1!

obtenerPalabras: unaJugada
	
	| pal orientacion listaPalabras |
	listaPalabras := List new.
	orientacion := ''.
	orientacion := self comprobarOrientacion: unaJugada.
	orientacion = 'horizontal'
		ifTrue:
			[pal := tablero obtenerPalabraHorizontal: (unaJugada at: 1).
			pal palabra size = 0 ifFalse: [listaPalabras add: pal].
			unaJugada
				do:
					[:each | 
					pal := tablero obtenerPalabraVertical: each.
					pal palabra size = 0 ifFalse: [listaPalabras add: pal]]].
	orientacion = 'vertical'
		ifTrue:
			[pal := tablero obtenerPalabraVertical: (unaJugada at: 1).
			pal palabra size = 0 ifFalse: [listaPalabras add: pal].
			unaJugada
				do:
					[:each | 
					pal := tablero obtenerPalabraHorizontal: each.
					pal palabra size = 0 ifFalse: [listaPalabras add: pal]]].
	^listaPalabras!

colocarFichasJugada: unaJugada
	
	unaJugada
		do:
			[:each | 
			self tablero
				ponerFicha: each
				en: each posicion]!

comprobarOrientacion: unaJugada
	
	| listaPuntos resultado |
	listaPuntos := List new.
	resultado := ''.
	unaJugada do: [:each | listaPuntos add: each posicion].
	(self comprobarHorizontal: listaPuntos)
		ifTrue:
			["Transcript show:'orientación horizontal';cr."
			resultado := 'horizontal'].
	(self comprobarVertical: listaPuntos)
		ifTrue:
			["Transcript show:'orientación vertical';cr."
			resultado := 'vertical'].
	^resultado!

jugador1: unJugador
	
	jugador1 := unJugador!

status: unString
	
	status := unString.
	self changed: #status!

tieneVecinos: unaJugada
	
	unaJugada do: [:each | each posicion = (8 @ 8) ifTrue: [^true]].
	palabrasJugada
		do:
			[:each | 
			each fichas
				do:
					[:otro | 
					otro = (unaJugada at: 1)
						ifTrue: [each fichas size > unaJugada size ifTrue: [^true]]]].
	^false!

condicionFinal
	
	fichas size = 0 & (self turno misFichas size = 0) ifTrue: [^true].
	self turno paso = 2 ifTrue: [^true].
	^false!

jugador2: unJugador
	
	jugador2 := unJugador!

comprobarJugada: unaJugada
	
	| suma |
	suma := 0.
	unaJugada size = 0
		ifTrue:
			["Transcript cr.
			Transcript show: 'No hay jugada.';cr."
			self status: 'No hay fichas colocadas'.
			^suma].
	(self fichasBienColocadas: unaJugada)
		ifFalse:
			["Transcript
				show: 'Fichas mal colocadas';
				cr"
			self status: 'Fichas mal colocadas'].
	self colocarFichasJugada: unaJugada.
	palabrasJugada := self obtenerPalabras: unaJugada.
	(self tieneVecinos: unaJugada)
		ifFalse:
			[self status: 'Fichas mal colocadas'.
			^suma].
	palabrasJugada
		do:
			[:each | 
			(self existePalabra: each palabra asLowercase)
				ifFalse:
					[each confirmada: false.
					self status: 'La palabra ' , each palabra , ' no existe'.
					^suma]
				ifTrue: [each confirmada: true]].
	suma := self calcularPuntosJugada: palabrasJugada.
	self status: 'Puntos de la jugada: ' , suma printString.
	^suma!

puede: unJugador ponerFicha: unaFicha en: unPunto
	
	self turno = unJugador
		ifTrue: [^tablero puedoPonerFicha: unaFicha en: unPunto]
		ifFalse:
			[self status: 'No es tu turno'.
			^false]!

calcularPuntosJugada: unaJugada palabras: unSet
	"unaJugada tiene las fichas del jugador, hay que añadir las fichas con la que forma la palabra o palabras"
	
	| suma valorCelda |
	suma := 0.
	valorCelda := 0.
	unaJugada
		do:
			[:each | 
			valorCelda := (self tablero tablero at: each posicion) valor.
			suma := (suma + each letra valor) * valorCelda].
	^suma!

fichas
	
	^fichas!

idioma
	
	^idioma! !

!Juego methodsFor: 'initialize-release' stamp: ' 20/6/13 16:51'!

initialize
	"Initialize a newly created instance. This method must answer the receiver."
	" *** Replace this comment with the appropriate initialization code *** "
	"status:='Bienvenidos a Apalabrados'."
	
	^self!

crearFichas
	
	self crearFichas: idioma crearAlfabeto!

crearTablero
	
	tablero := Tablero new.
	tablero construirTablero.
	tablero
		asignarCasillaInicio;
		asignar12CasillasDL;
		asignar12CasillasDP;
		asignar28CasillasTL;
		asignar8CasillasTP;
		asignarCasillaNormal.
	^tablero!

crearEiniciarDiccionario: unSimb
	"portatil--> C:\Users\Jose Antonio\Documents\My Dropbox\asignaturas\diseño de sw\trabajo"
	"pc univ--> C:\Users\jgallud\Dropbox\asignaturas\diseño de sw\trabajo\dict.txt'."
	
	| dic |
	unSimb == #langSp
		ifTrue: [dic := 'dict.txt']
		ifFalse: [dic := 'eng_com.dic'].
	idioma := Idioma new.
	idioma iniciaListadoLetras.
	idioma rutaDiccionario: dic.
	idioma iniciarDiccionario.
	self diccionario: idioma diccionario!

crearFichas: unAlfabeto
	
	| ficha |
	fichas := Set new.
	unAlfabeto
		do:
			[:each | 
			1
				to: each contador
				do:
					[:elem | 
					ficha := LetraConcreta new.
					ficha letra: each.
					fichas add: ficha]].
	^fichas!

crearEiniciarDiccionario
	"portatil--> C:\Users\Jose Antonio\Documents\My Dropbox\asignaturas\diseño de sw\trabajo"
	"pc univ--> C:\Users\jgallud\Dropbox\asignaturas\diseño de sw\trabajo\dict.txt'."
	
	idioma := Idioma new.
	idioma iniciaListadoLetras.
	idioma rutaDiccionario:
			'C:\Users\jgallud\Dropbox\asignaturas\diseno de sw\trabajo\dict.txt'.
	idioma iniciarDiccionario.
	self diccionario: idioma diccionario! !


!Letra class methodsFor: 'instance creation' stamp: ' 20/6/13 16:51'!

new
	"Answer a newly created and initialized instance."
	
	^super new initialize! !


!Letra methodsFor: 'accessing' stamp: ' 20/6/13 16:51'!

valor
	
	^valor!

simbolo2: anObject
	
	simbolo2 := anObject!

valor: anObject
	
	valor := anObject!

contador: unObjeto
	
	contador := unObjeto!

simbolo2
	
	^simbolo2!

simbolo
	
	^simbolo!

simbolo: anObject
	
	simbolo := anObject!

contador
	
	^contador! !

!Letra methodsFor: 'initialize-release' stamp: ' 20/6/13 16:51'!

initialize
	"Initialize a newly created instance. This method must answer the receiver."
	" *** Edit the following to properly initialize instance variables ***"
	
	simbolo := nil.
	valor := nil.	" *** And replace this comment with additional initialization code *** "
	^self! !


!Palabra class methodsFor: 'instance creation' stamp: ' 20/6/13 16:51'!

new
	"Answer a newly created and initialized instance."
	
	^super new initialize! !


!Palabra methodsFor: 'accessing' stamp: ' 20/6/13 16:51'!

palabra
	
	^palabra!

fichas: anObject
	
	fichas := anObject!

palabra: anObject
	
	palabra := anObject!

confirmada
	
	^confirmada!

fichas
	
	^fichas!

confirmada: unBoolean
	
	confirmada := unBoolean! !

!Palabra methodsFor: 'initialize-release' stamp: ' 20/6/13 16:51'!

initialize
	"Initialize a newly created instance. This method must answer the receiver."
	
	super initialize.	" *** Edit the following to properly initialize instance variables ***"
	fichas := nil.
	palabra := nil.	" *** And replace this comment with additional initialization code *** "
	^self! !


!Jugador class methodsFor: 'instance creation' stamp: ' 20/6/13 16:51'!

new
	"Answer a newly created and initialized instance."
	
	^super new initialize! !


!Jugador methodsFor: 'accessing' stamp: ' 20/6/13 16:51'!

confirmarJugada
	"se llama a este método después de comprobar la jugada"
	"fijar las fichas al tablero"
	
	| suma |
	suma := 0.
	suma := self juego confirmarJugadaDe: self.
	suma = 0
		ifFalse:
			[self rellenarMisFichas.
			self verMisFichas.
			self jugada: List new].
	^suma!

jugada
	
	^jugada!

seleccionaFicha: unCar
	
	| unaFicha |
	misFichas size > 0
		ifTrue:
			[unaFicha := misFichas
				detect: [:each | each letra simbolo = unCar]
				ifNone: [nil]]
		ifFalse: [unaFicha := nil].
	^unaFicha!

misFichas
	
	^misFichas!

jugada: listaFichas
	
	jugada := listaFichas!

seleccionaFichaDe: unSet caracter: unCar
	
	| unaFicha |
	misFichas size > 0
		ifTrue:
			[unaFicha := unSet
				detect: [:each | each letra simbolo = unCar asUppercase]
				ifNone: [nil]]
		ifFalse: [unaFicha := nil].
	unaFicha = nil
		ifTrue:
			[Transcript
				show: 'No tienes la letra: ' , unCar;
				cr].
	^unaFicha!

pasar
	
	| suma |
	suma := self paso.
	suma := suma + 1.
	self paso: suma.
	self jugada: List new.
	self juego pasar: self!

misFichas: unasFichas
	
	misFichas := unasFichas!

existePalabra: unaPalabra
	
	^juego existePalabra: unaPalabra!

misFcar
	
	^misFcar!

ponerFicha: unaFicha en: unPunto
	
	(juego tablero puedoPonerFicha: unaFicha en: unPunto)
		ifTrue:
			[unaFicha posicion: unPunto.
			jugada add: unaFicha.
			misFichas remove: unaFicha]!

puedoPonerFicha: unaFicha en: unPunto
	
	(juego puede: self ponerFicha: unaFicha en: unPunto) & (unaFicha ~= nil)
		ifTrue:
			[unaFicha posicion: unPunto.
			jugada add: unaFicha.
			misFichas remove: unaFicha.
			^true]
		ifFalse:
			[Transcript
				show: 'No se puede poner la ficha en ' , unPunto printString;
				cr.
			^false]!

colocarFichasJugada: unaJugada
	
	self juego colocarFichasJugada: unaJugada!

nombre
	
	^nombre!

deshacerJugada
	
	self jugada
		do:
			[:each | 
			self misFichas add: each.
			self juego quitarFichaEn: each posicion].
	self jugada: List new!

juego
	
	^juego!

nombre: anObject
	
	nombre := anObject!

puntos
	
	^puntos!

comprobarJugada
	
	| suma |
	suma := 0.
	suma := self juego comprobarJugada: self jugada.
	^suma!

palabras: anObject
	
	palabras := anObject!

quitarFicha: unaFicha
	
	juego quitarFichaEn: unaFicha posicion.
	self misFichas add: unaFicha.
	self jugada remove: unaFicha!

rellenarMisFichas
	
	| unSet |
	unSet := Set new.
	unSet := self juego dameFichas: 7 - self misFichas size.
	unSet size > 0
		ifTrue: [unSet do: [:each | misFichas add: each]]
		ifFalse:
			[Transcript
				show: 'No quedan fichas';
				cr]!

puntos: anObject
	
	puntos := anObject.
	self changed: #puntos!

paso: unNum
	
	paso := unNum!

palabras
	
	^palabras!

buscarPalabrasJugada: unaJugada
	
	^juego obtenerPalabras: unaJugada!

calcularPuntosJugada: unaJugada
	
	^self juego calcularPuntosJugada: unaJugada!

paso
	
	^paso!

jugar
	"se llama a este método después de comprobar la jugada"
	"fijar las fichas al tablero"
	
	!

juego: unJuego
	
	juego := unJuego!

quitarFichaEn: unPunto
	
	| aFicha |
	aFicha := juego obtenerFichaEn: unPunto.
	aFicha isNil
		ifFalse:
			[juego quitarFichaEn: unPunto.
			aFicha letra simbolo2 isNil
				ifFalse:
					[aFicha letra simbolo: '*'.
					aFicha letra simbolo2: nil].
			self misFichas add: aFicha.
			self jugada remove: aFicha]! !

!Jugador methodsFor: 'testing' stamp: ' 20/6/13 16:51'!

verMisFichas
	
	misFcar removeAll.
	misFichas
		do:
			[:each | 
			"Transcript show: each letra simbolo."
			misFcar add: each letra simbolo]	"	Transcript cr."! !

!Jugador methodsFor: 'initialize-release' stamp: ' 20/6/13 16:51'!

initialize
	"Initialize a newly created instance. This method must answer the receiver."
	
	super initialize.	" *** Edit the following to properly initialize instance variables ***"
	nombre := nil.
	palabras := nil.
	puntos := 0.
	paso := 0.
	jugada := List new.
	misFcar := List new.
	misFichas := Set new.	" *** And replace this comment with additional initialization code *** "
	^self! !


!Casilla class methodsFor: 'instance creation' stamp: ' 20/6/13 16:51'!

new
	"Answer a newly created and initialized instance."
	
	^super new initialize! !


!Casilla methodsFor: 'accessing' stamp: ' 20/6/13 16:51'!

color: unColor
	
	color := unColor!

simbolo: unCar
	
	simbolo := unCar!

tipo
	
	^tipo!

valor
	
	^valor!

ocupada
	
	^ocupada!

valor: unNum
	
	valor := unNum!

tipo: unValor
	
	tipo := unValor!

posicion
	
	^posicion!

color
	
	^color!

ocupada: unValor
	
	ocupada := unValor!

posicion: unPunto
	
	posicion := unPunto!

simbolo
	
	^simbolo! !

!Casilla methodsFor: 'initialize-release' stamp: ' 20/6/13 16:51'!

initialize
	"Initialize a newly created instance. This method must answer the receiver."
	" *** Replace this comment with the appropriate initialization code *** "
	
	ocupada := nil.
	^self! !


!CasillaNormal methodsFor: 'initialize-release' stamp: ' 20/6/13 16:51'!

initialize
	"Initialize a newly created instance. This method must answer the receiver."
	
	super initialize.	" *** Replace this comment with the appropriate initialization code *** "
	simbolo := ' '.
	valor := 1.
	color := #white.
	^self! !


!Diccionario class methodsFor: 'instance creation' stamp: ' 20/6/13 16:51'!

new
	"Answer a newly created and initialized instance."
	
	^super new initialize! !


!Diccionario methodsFor: 'accessing' stamp: ' 20/6/13 16:51'!

obtenerPalabras
	
	| miArchivo miStream palabra |
	palabra := ''.
	miArchivo := rutaDiccionario asFilename.
	miStream := miArchivo readStream.
	[miStream atEnd]
		whileFalse:
			[palabra := miStream upTo: Character lf.
			listaPalabras add: palabra].
	miStream close.
	^listaPalabras!

listaPalabras
	
	^listaPalabras!

buscarPalabra: unaPalabra
	
	listaPalabras do: [:each | each = unaPalabra ifTrue: [^true]].
	^false! !

!Diccionario methodsFor: 'initialize-release' stamp: ' 20/6/13 16:51'!

initialize
	"Initialize a newly created instance. This method must answer the receiver."
	" *** Replace this comment with the appropriate initialization code *** "
	
	listaPalabras := List new.
	^self!

setRuta: unaRuta
	
	rutaDiccionario := unaRuta! !


!CasillaTP methodsFor: 'initialize-release' stamp: ' 20/6/13 16:51'!

initialize
	"Initialize a newly created instance. This method must answer the receiver."
	
	super initialize.	" *** Replace this comment with the appropriate initialization code *** "
	valor := 3.
	simbolo := 'TP'.
	color := #red.
	^self! !


!CasillaDL methodsFor: 'initialize-release' stamp: ' 20/6/13 16:51'!

initialize
	"Initialize a newly created instance. This method must answer the receiver."
	
	super initialize.	" *** Replace this comment with the appropriate initialization code *** "
	valor := 2.
	simbolo := 'DL'.
	color := #blue.
	^self! !


!Tablero class methodsFor: 'instance creation' stamp: ' 20/6/13 16:51'!

new
	"Answer a newly created and initialized instance."
	
	^super new initialize! !


!Tablero methodsFor: 'initialize-release' stamp: ' 20/6/13 16:51'!

asignar28CasillasTL
	
	| casilla |
	casilla := CasillaTL new.
	tablero
		at: 5 @ 1
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 11 @ 1
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 5 @ 15
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 11 @ 15
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 2 @ 2
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 14 @ 2
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 2 @ 14
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 14 @ 14
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 7 @ 3
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 9 @ 3
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 7 @ 13
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 9 @ 13
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 4 @ 4
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 12 @ 4
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 4 @ 12
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 12 @ 12
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 1 @ 5
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 15 @ 5
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 1 @ 11
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 15 @ 11
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 6 @ 6
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 10 @ 6
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 6 @ 10
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 10 @ 10
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 3 @ 7
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 13 @ 7
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 3 @ 9
		put: casilla.
	casilla := CasillaTL new.
	tablero
		at: 13 @ 9
		put: casilla.
	^tablero!

construirTablero
	
	self establecerLimites.
	tablero := TwoDList
		columns: self limiteX
		rows: self limiteY.
	^tablero!

asignar8CasillasTP
	
	| casilla |
	casilla := CasillaTP new.
	tablero
		at: 3 @ 1
		put: casilla.
	casilla := CasillaTP new.
	tablero
		at: 13 @ 1
		put: casilla.
	casilla := CasillaTP new.
	tablero
		at: 1 @ 3
		put: casilla.
	casilla := CasillaTP new.
	tablero
		at: 1 @ 13
		put: casilla.
	casilla := CasillaTP new.
	tablero
		at: 3 @ 15
		put: casilla.
	casilla := CasillaTP new.
	tablero
		at: 13 @ 15
		put: casilla.
	casilla := CasillaTP new.
	tablero
		at: 15 @ 3
		put: casilla.
	casilla := CasillaTP new.
	tablero
		at: 15 @ 13
		put: casilla.
	^tablero!

asignarCasillaInicio
	
	| casilla |
	casilla := CasillaInicio new.
	tablero
		at: 8 @ 8
		put: casilla.
	^tablero!

asignarCasillaNormal
	
	| celda |
	1
		to: self limiteY
		do:
			[:fil | 
			1
				to: self limiteX
				do:
					[:col | 
					(tablero at: col @ fil) = nil
						ifTrue:
							[celda := CasillaNormal new.
							celda posicion: col @ fil.
							tablero
								at: col @ fil
								put: celda]]].
	^tablero!

establecerLimites
	
	self limiteX: 15.
	self limiteY: 15!

initialize
	"Initialize a newly created instance. This method must answer the receiver."
	" *** Replace this comment with the appropriate initialization code *** "
	
	colTablero := TwoDList columns: 15 rows: 15.
	^self!

asignar12CasillasDP
	
	| casilla |
	casilla := CasillaDP new.
	tablero
		at: 6 @ 2
		put: casilla.
	casilla := CasillaDP new.
	tablero
		at: 10 @ 2
		put: casilla.
	casilla := CasillaDP new.
	tablero
		at: 8 @ 4
		put: casilla.
	casilla := CasillaDP new.
	tablero
		at: 6 @ 14
		put: casilla.
	casilla := CasillaDP new.
	tablero
		at: 10 @ 14
		put: casilla.
	casilla := CasillaDP new.
	tablero
		at: 8 @ 12
		put: casilla.
	casilla := CasillaDP new.
	tablero
		at: 2 @ 6
		put: casilla.
	casilla := CasillaDP new.
	tablero
		at: 2 @ 10
		put: casilla.
	casilla := CasillaDP new.
	tablero
		at: 4 @ 8
		put: casilla.
	casilla := CasillaDP new.
	tablero
		at: 14 @ 6
		put: casilla.
	casilla := CasillaDP new.
	tablero
		at: 14 @ 10
		put: casilla.
	casilla := CasillaDP new.
	tablero
		at: 12 @ 8
		put: casilla.
	^tablero!

asignar12CasillasDL
	
	| casilla |
	casilla := CasillaDL new.
	tablero
		at: 3 @ 3
		put: casilla.
	casilla := CasillaDL new.
	tablero
		at: 3 @ 13
		put: casilla.
	casilla := CasillaDL new.
	tablero
		at: 13 @ 3
		put: casilla.
	casilla := CasillaDL new.
	tablero
		at: 13 @ 13
		put: casilla.
	casilla := CasillaDL new.
	tablero
		at: 7 @ 5
		put: casilla.
	casilla := CasillaDL new.
	tablero
		at: 7 @ 11
		put: casilla.
	casilla := CasillaDL new.
	tablero
		at: 9 @ 5
		put: casilla.
	casilla := CasillaDL new.
	tablero
		at: 9 @ 11
		put: casilla.
	casilla := CasillaDL new.
	tablero
		at: 5 @ 7
		put: casilla.
	casilla := CasillaDL new.
	tablero
		at: 5 @ 9
		put: casilla.
	casilla := CasillaDL new.
	tablero
		at: 11 @ 7
		put: casilla.
	casilla := CasillaDL new.
	tablero
		at: 11 @ 9
		put: casilla.
	^tablero! !

!Tablero methodsFor: 'accessing' stamp: ' 20/6/13 16:51'!

colTablero
	
	^colTablero!

limiteX
	
	^limiteX!

obtenerPalabraHorizontal: unaFicha
	
	| fil col palabra ini fin hay listaFichas obPalabra |
	obPalabra := Palabra new.
	palabra := ''.
	listaFichas := List new.
	ini := 0.
	fin := 0.
	hay := false.
	fil := unaFicha posicion y.
	col := unaFicha posicion x.
	ini := col.
	[(ini >= 1 & (self obtenerFichaEn: (ini - 1) @ fil)) ~= nil]
		whileTrue:
			[ini := ini - 1.
			hay := true].
	fin := col.
	[(fin <= self limiteX & (self obtenerFichaEn: (fin + 1) @ fil)) ~= nil]
		whileTrue:
			[fin := fin + 1.
			hay := true].
	[ini <= fin & hay]
		whileTrue:
			[palabra := palabra , (self obtenerFichaEn: ini @ fil) letra simbolo.
			listaFichas add: (self obtenerFichaEn: ini @ fil).
			ini := ini + 1].
	obPalabra palabra: palabra.
	obPalabra fichas: listaFichas.
	^obPalabra!

puedoPonerFicha: unaFicha en: unPunto
	
	self limiteX < unPunto x | (1 > unPunto x)
		ifTrue:
			[Transcript
				show: 'Ficha fuera de límites';
				cr.
			^false].
	self limiteY < unPunto y | (1 > unPunto y)
		ifTrue:
			[Transcript
				show: 'Ficha fuera de límites';
				cr.
			^false].
	(tablero at: unPunto) ocupada = nil
		ifTrue:
			[(tablero at: unPunto) ocupada: unaFicha.
			^true]
		ifFalse:
			[Transcript
				show: 'Casilla ocupada';
				cr.
			^false]!

ponerFicha: unaFicha en: unPunto
	
	(tablero at: unPunto) ocupada = nil
		ifTrue:
			[(tablero at: unPunto) ocupada: unaFicha.
			^true]
		ifFalse: [^false]!

colTablero: unaCol
	
	colTablero := unaCol!

limiteY: unValor
	
	limiteY := unValor!

tablero: unaColeccion
	
	tablero := unaColeccion!

obtenerCeldaEn: unPunto
	
	^tablero at: unPunto!

tablero
	
	^tablero!

limiteX: unValor
	
	limiteX := unValor!

obtenerFichaEn: unPunto
	
	^(tablero at: unPunto) ocupada!

limiteY
	
	^limiteY!

quitarFichaEn: unPunto
	
	(tablero at: unPunto) ocupada: nil!

obtenerPalabras: unaJugada
	
	!

obtenerPalabraVertical: unaFicha
	
	| fil col palabra ini fin hay obPalabra listaFichas |
	obPalabra := Palabra new.
	listaFichas := List new.
	palabra := ''.
	ini := 0.
	fin := 0.
	hay := false.
	fil := unaFicha posicion y.
	col := unaFicha posicion x.
	ini := fil.
	[(ini >= 1 & (self obtenerFichaEn: col @ (ini - 1))) ~= nil]
		whileTrue:
			[ini := ini - 1.
			hay := true].
	fin := fil.
	[(fin <= self limiteY & (self obtenerFichaEn: col @ (fin + 1))) ~= nil]
		whileTrue:
			[fin := fin + 1.
			hay := true].
	[ini <= fin & hay]
		whileTrue:
			[palabra := palabra , (self obtenerFichaEn: col @ ini) letra simbolo.
			listaFichas add: (self obtenerFichaEn: col @ ini).
			ini := ini + 1].
	obPalabra palabra: palabra.
	obPalabra fichas: listaFichas.
	^obPalabra!

imprimirTablero
	
	1
		to: limiteY
		do:
			[:fil | 
			"Transcript cr."
			1
				to: limiteX
				do:
					[:col | 
					(tablero at: col @ fil) ocupada = nil
						ifTrue:
							[colTablero
								at: col @ fil
								put: (tablero at: col @ fil) simbolo]
						ifFalse:
							[(tablero at: col @ fil) ocupada letra simbolo = '*'
								ifTrue:
									[colTablero
										at: col @ fil
										put: (tablero at: col @ fil) ocupada letra simbolo2]
								ifFalse:
									[colTablero
										at: col @ fil
										put: (tablero at: col @ fil) ocupada letra simbolo]]]]!

quitarFicha: unaFicha
	
	(tablero at: unaFicha posicion) ocupada: nil! !


!CasillaDP methodsFor: 'initialize-release' stamp: ' 20/6/13 16:51'!

initialize
	"Initialize a newly created instance. This method must answer the receiver."
	
	super initialize.	" *** Replace this comment with the appropriate initialization code *** "
	valor := 2.
	simbolo := 'DP'.
	color := #orange.
	^self! !


!CasillaInicio methodsFor: 'initialize-release' stamp: ' 20/6/13 16:51'!

initialize
	"Initialize a newly created instance. This method must answer the receiver."
	
	super initialize.	" *** Replace this comment with the appropriate initialization code *** "
	simbolo := '*'.
	valor := 1.
	color := #black.
	^self! !


!Idioma class methodsFor: 'instance creation' stamp: ' 20/6/13 16:51'!

new
	"Answer a newly created and initialized instance."
	
	^super new initialize! !


!Idioma methodsFor: 'accessing' stamp: ' 20/6/13 16:51'!

rutaDiccionario
	
	^rutaDiccionario!

alfabeto
	
	^alfabeto!

idioma: anObject
	
	idioma := anObject!

diccionario
	
	^diccionario!

diccionario: anObject
	
	diccionario := anObject!

idioma
	
	^idioma!

alfabeto: anObject
	
	alfabeto := anObject!

rutaDiccionario: unaRuta
	
	rutaDiccionario := unaRuta! !

!Idioma methodsFor: 'initialize-release' stamp: ' 20/6/13 16:51'!

iniciarDiccionario
	
	diccionario := Diccionario new.
	diccionario setRuta: self rutaDiccionario.
	diccionario obtenerPalabras!

initialize
	"Initialize a newly created instance. This method must answer the receiver."
	" *** Edit the following to properly initialize instance variables ***"
	
	idioma := nil.
	alfabeto := nil.
	diccionario := nil.	" *** And replace this comment with additional initialization code *** "
	^self!

crearLetras
	
	| letra |
	alfabeto := List new.
	listadoLetras
		do:
			[:each | 
			letra := Letra new.
			letra simbolo: (each at: 1).
			letra valor: (each at: 2).
			letra contador: (each at: 3).
			alfabeto add: letra].
	^alfabeto!

crearFichas
	
	| ficha |
	fichas := Set new.
	alfabeto
		do:
			[:each | 
			1
				to: each contador
				do:
					[:elem | 
					ficha := LetraConcreta new.
					ficha letra: each.
					fichas add: ficha]].
	^fichas!

crearAlfabeto
	
	| letra |
	alfabeto := List new.
	listadoLetras
		do:
			[:each | 
			letra := Letra new.
			letra simbolo: (each at: 1).
			letra valor: (each at: 2).
			letra contador: (each at: 3).
			alfabeto add: letra].
	^alfabeto!

iniciaListadoLetras
	
	| valores |
	valores := Array new: 3.
	listadoLetras := Array new: 26.
	valores at: 1 put: 'A'.
	valores at: 2 put: 1.
	valores at: 3 put: 12.
	listadoLetras at: 1 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'B'.
	valores at: 2 put: 3.
	valores at: 3 put: 2.
	listadoLetras at: 2 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'C'.
	valores at: 2 put: 3.
	valores at: 3 put: 4.
	listadoLetras at: 3 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'D'.
	valores at: 2 put: 2.
	valores at: 3 put: 5.
	listadoLetras at: 4 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'E'.
	valores at: 2 put: 1.
	valores at: 3 put: 12.
	listadoLetras at: 5 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'F'.
	valores at: 2 put: 4.
	valores at: 3 put: 1.
	listadoLetras at: 6 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'G'.
	valores at: 2 put: 2.
	valores at: 3 put: 2.
	listadoLetras at: 7 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'H'.
	valores at: 2 put: 4.
	valores at: 3 put: 2.
	listadoLetras at: 8 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'I'.
	valores at: 2 put: 1.
	valores at: 3 put: 6.
	listadoLetras at: 9 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'J'.
	valores at: 2 put: 8.
	valores at: 3 put: 1.
	listadoLetras at: 10 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'L'.
	valores at: 2 put: 1.
	valores at: 3 put: 4.
	listadoLetras at: 11 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'M'.
	valores at: 2 put: 3.
	valores at: 3 put: 2.
	listadoLetras at: 12 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'N'.
	valores at: 2 put: 1.
	valores at: 3 put: 5.
	listadoLetras at: 13 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'Ñ'.
	valores at: 2 put: 8.
	valores at: 3 put: 1.
	listadoLetras at: 14 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'O'.
	valores at: 2 put: 1.
	valores at: 3 put: 9.
	listadoLetras at: 15 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'P'.
	valores at: 2 put: 3.
	valores at: 3 put: 2.
	listadoLetras at: 16 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'Q'.
	valores at: 2 put: 5.
	valores at: 3 put: 1.
	listadoLetras at: 17 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'R'.
	valores at: 2 put: 1.
	valores at: 3 put: 5.
	listadoLetras at: 18 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'S'.
	valores at: 2 put: 1.
	valores at: 3 put: 6.
	listadoLetras at: 19 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'T'.
	valores at: 2 put: 1.
	valores at: 3 put: 4.
	listadoLetras at: 20 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'U'.
	valores at: 2 put: 1.
	valores at: 3 put: 5.
	listadoLetras at: 21 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'V'.
	valores at: 2 put: 4.
	valores at: 3 put: 1.
	listadoLetras at: 22 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'X'.
	valores at: 2 put: 8.
	valores at: 3 put: 1.
	listadoLetras at: 23 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'Y'.
	valores at: 2 put: 4.
	valores at: 3 put: 1.
	listadoLetras at: 24 put: valores.
	valores := Array new: 3.
	valores at: 1 put: 'Z'.
	valores at: 2 put: 10.
	valores at: 3 put: 1.
	listadoLetras at: 25 put: valores.
	valores := Array new: 3.
	valores at: 1 put: '*'.
	valores at: 2 put: 0.
	valores at: 3 put: 2.
	listadoLetras at: 26 put: valores.
	^listadoLetras! !


!CasillaTL methodsFor: 'initialize-release' stamp: ' 20/6/13 16:51'!

initialize
	"Initialize a newly created instance. This method must answer the receiver."
	
	super initialize.	" *** Replace this comment with the appropriate initialization code *** "
	valor := 3.
	simbolo := 'TL'.
	color := #green.
	^self! !


!LetraConcreta class methodsFor: 'instance creation' stamp: ' 20/6/13 16:51'!

new
	"Answer a newly created and initialized instance."
	
	^super new initialize! !


!LetraConcreta methodsFor: 'initialize-release' stamp: ' 20/6/13 16:51'!

initialize
	"Initialize a newly created instance. This method must answer the receiver."
	" *** Edit the following to properly initialize instance variables ***"
	
	letra := nil.	" *** And replace this comment with additional initialization code *** "
	^self! !

!LetraConcreta methodsFor: 'accessing' stamp: ' 20/6/13 16:51'!

posicion
	
	^posicion!

letra
	
	^letra!

letra: anObject
	
	letra := anObject!

posicion: unPunto
	
	posicion := unPunto! !

