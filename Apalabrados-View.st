<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.9.1 of 18 de octubre de 2012 on 1 de agosto de 2013 at 20:36:37</time-stamp>


<component-created>
<name>Apalabrados-View</name> <type>package</type>
</component-created><!-- Package Apalabrados-View* -->


<component-property>
<name>Apalabrados-View</name> <type>package</type>
<property>comment</property> <value>'Vista del Apalabrados basado en REST
'</value>
</component-property>

<class>
<name>ApalabradosUI</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>juego vTable sightingsTable fichas fichasRest colTab status puntos nomUsr otroAp turno idPartida </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Apalabrados-View</package>
</attributes>
</class>

<comment>
<class-id>ApalabradosUI</class-id>
<body>ApalabradosUI es la vista del juego.Instance Variables	juego	&lt;Object | ProtoObject&gt;	description of juego	vTable	&lt;Object&gt;	description of vTable</body>
</comment>

<class>
<name>LanzaAp</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>lang usr1 usr2 juego jug1 jug2 ap1 ap2 status idPartida partidas listaPartidas sightingsTable </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Apalabrados-View</package>
</attributes>
</class>

<comment>
<class-id>LanzaAp</class-id>
<body>LanzaAp launchs two views of ApalabradosUIInstance Variables	lang	&lt;ValueHolder&gt;	description of lang	usr1	&lt;ValueHolder&gt;	description of usr1	usr2	&lt;ValueHolder&gt;	description of usr2</body>
</comment>

<methods>
<class-id>ApalabradosUI class</class-id> <category>interface specs</category>

<body package="Apalabrados-View" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#properties: #(#{UI.PropertyListDictionary} #sizeType #specifiedSize #positionType #cascade #openType #advanced ) 			#label: 'ApalabradosUI' 			#min: #(#{Core.Point} 366 397 ) 			#max: #(#{Core.Point} 366 397 ) 			#bounds: #(#{Graphics.Rectangle} 505 393 871 790 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.TableViewSpec} 					#layout: #(#{Graphics.Rectangle} 43 26 360 360 ) 					#name: #Table1 					#flags: 12 					#model: #vTable 					#showHGrid: true 					#showVGrid: true ) 				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.Rectangle} 7 61 36 190 ) 					#name: #List1 					#flags: 12 					#model: #fichas 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 2.5 198 40.5 217 ) 					#name: #ActionButton1 					#model: #poner 					#label: 'poner' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 43 364 356 391 ) 					#name: #InputField1 					#model: #status 					#alignment: #center 					#isReadOnly: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 2 279 41 319 ) 					#name: #ActionButton3 					#model: #comprobarJugada 					#label: 'comp' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 2 323 41 363 ) 					#name: #ActionButton5 					#model: #confirmarJugada 					#label: 'conf' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 5.5 30 34.0 56 ) 					#name: #InputField2 					#model: #puntos 					#alignment: #center 					#type: #number ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 2.5 220 40.5 240 ) 					#name: #ActionButton7 					#model: #quitar 					#label: 'quitar' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 3 243 41 263 ) 					#name: #ActionButton9 					#model: #pasar 					#label: 'pasar' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 6 3 128 26 ) 					#name: #InputField4 					#model: #nomUsr 					#isReadOnly: true ) 				#(#{UI.RegionSpec} 					#layout: #(#{Graphics.Rectangle} 330 3 360 26 ) 					#name: #Region1 					#lineWidth: 1 ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 250 2 325 27 ) 					#name: #ActionButton2 					#model: #meToca 					#label: '¿Me toca?' 					#defaultable: true ) ) ) )</body>
</methods>

<methods>
<class-id>ApalabradosUI class</class-id> <category>resources</category>

<body package="Apalabrados-View" selector="icono">icono	"Tools.UIMaskEditor new openOnClass: self andSelector: #icono"	&lt;resource: #image&gt;	^CachedImage on: (Image extent: 32@32 depth: 1 bitsPerPixel: 1 palette: CoveragePalette monoMaskPalette usingBits: #[0 0 0 0 7 192 0 0 15 224 0 0 31 240 0 0 63 248 0 0 127 252 0 0 124 124 120 0 120 62 254 0 120 63 255 0 120 63 255 128 120 63 255 192 124 127 239 192 127 255 199 224 127 255 131 224 127 255 1 224 127 255 1 224 124 127 1 224 124 63 131 224 124 63 199 192 124 63 239 128 124 63 255 128 124 63 255 0 124 63 254 0 124 63 252 0 124 31 224 0 124 15 224 0 60 7 224 0 28 7 224 0 12 3 224 0 4 1 224 0 0 0 224 0 0 0 96 0])</body>
</methods>

<methods>
<class-id>ApalabradosUI class</class-id> <category>instance creation</category>

<body package="Apalabrados-View" selector="newJuego:jugador:">newJuego:unJuego jugador:unJugador^super new initialize juego:unJuego; jug:unJugador</body>
</methods>


<methods>
<class-id>ApalabradosUI</class-id> <category>accessing</category>

<body package="Apalabrados-View" selector="colTab:">colTab:aTwoDList	colTab:=aTwoDList.</body>

<body package="Apalabrados-View" selector="jug">jug	^jug</body>

<body package="Apalabrados-View" selector="fichasRest">fichasRest	^fichasRest</body>

<body package="Apalabrados-View" selector="idPartida">idPartida	^idPartida</body>

<body package="Apalabrados-View" selector="juego:">juego:unJuego	juego:=unJuego</body>

<body package="Apalabrados-View" selector="otroAp:">otroAp:apUI	otroAp:=apUI.</body>

<body package="Apalabrados-View" selector="colTab">colTab	^colTab</body>

<body package="Apalabrados-View" selector="otroAp">otroAp	^otroAp</body>

<body package="Apalabrados-View" selector="jug:">jug:unJugador	jug:=unJugador</body>

<body package="Apalabrados-View" selector="fichasRest:">fichasRest:unaLista	fichasRest:=unaLista.</body>

<body package="Apalabrados-View" selector="idPartida:">idPartida:aString	idPartida:=aString</body>

<body package="Apalabrados-View" selector="juego">juego	^juego</body>
</methods>

<methods>
<class-id>ApalabradosUI</class-id> <category>actions</category>

<body package="Apalabrados-View" selector="poner">poner	self ponerFicha.	self obtenerFichas.	self actualizarUI."	| fic car|	(fichas selection isNil) | (vTable selectionIndex isNil) 	ifFalse:[		fic:=(jug seleccionaFichaDe:(jug misFichas) caracter:fichas selection).		fic letra simbolo = '*'			ifTrue:[			car := (Dialog request: 'Introduce la letra que deseas introducir' initialAnswer:'A').					fic letra simbolo:car.			fic letra simbolo2:'*'.		].		(jug puedoPonerFicha:fic en:vTable selectionIndex)			ifTrue:[			jug verMisFichas.			juego tablero imprimirTablero.		].	]	ifTrue:[		status value:'no ha seleccionado ficha o casilla'.	].	self actualizarUI."</body>

<body package="Apalabrados-View" selector="meToca">meToca	self colorear</body>

<body package="Apalabrados-View" selector="actualizarUI">actualizarUI	self colorear.</body>

<body package="Apalabrados-View" selector="comprobarJugada">comprobarJugada	self comprobarJugadaREST.</body>

<body package="Apalabrados-View" selector="quitar">quitar	vTable selectionIndex isNil	ifFalse:["		jug quitarFichaEn:vTable selectionIndex.		jug verMisFichas.		juego tablero imprimirTablero."		self quitarFicha	].	self actualizarUI.</body>

<body package="Apalabrados-View" selector="confirmarJugada">confirmarJugada 	self confirmarJugadaREST.	self actualizarUI.</body>

<body package="Apalabrados-View" selector="pasar">pasar	juego turno pasar.	self actualizarUI.</body>

<body package="Apalabrados-View" selector="notify">notify	self colorear.</body>
</methods>

<methods>
<class-id>ApalabradosUI</class-id> <category>networking</category>

<body package="Apalabrados-View" selector="obtenerTablero">obtenerTablero	|contenido miStream miCar fil col msg|	msg:='Fallo al conectar'.	fil:=1.	col:=1.	contenido:=''.	contenido:=[(Net.HttpClient 		get:'http://localhost:8080/apalab-api/obtenerTablero?num=',idPartida) contents ]	on: OSErrorHolder needRetrySignal, OS.OSErrorHolder peerFaultSignal	do: [:ex | Transcript show: 'Imposilbe conectar'; cr. 			ex return].	contenido isNil		ifFalse:[		miStream:=contenido readStream.		msg:='Conexión ok'.		[ miStream atEnd ] whileFalse:		[ 		miCar := miStream upTo: $,.		(fil&lt;=15)		ifTrue:[			colTab at:col@fil put:miCar.			col:=col+1.			(col=16) 				ifTrue:[					fil:=fil+1.					col:=1.				]			]		 ].		miStream close.		].	self status value:msg.</body>

<body package="Apalabrados-View" selector="esMiTurno">esMiTurno	|contenido ret jugador url|	ret:=false.	jugador:=nomUsr value.	contenido:=''.	url:='http://localhost:8080/apalab-api/esMiTurno?num=',idPartida,'&amp;jug=',jugador.	contenido:=[(Net.HttpClient get:url) contents ]	on: OSErrorHolder needRetrySignal, OS.OSErrorHolder peerFaultSignal	do: [:ex | Transcript show: 'Imposilbe conectar'; cr. 			ex return].	contenido isNil		ifFalse:[		ret:=((contenido findString:'si' startingAt:1) &gt;0)		].	^ret	"self status value:msg."</body>

<body package="Apalabrados-View" selector="ponerFicha">ponerFicha	|contenido msg jugador unY unX car url|	msg:='Servidor no ok'.	jugador:=nomUsr value.	contenido:=''.	(fichas selection isNil) | (vTable selectionIndex isNil) 	ifFalse:[	car:=fichas selection.	unY:=(vTable selectionIndex y) printString.	unX:=(vTable selectionIndex x) printString.	url:='http://localhost:8080/apalab-api/ponerFicha?num=',idPartida,'&amp;jug=',jugador,'&amp;enY=',unY,'&amp;enX=',unX,'&amp;car=',car.	contenido:=[(Net.HttpClient get:url) contents ]	on: OSErrorHolder needRetrySignal, OS.OSErrorHolder peerFaultSignal	do: [:ex | Transcript show: 'Imposilbe conectar'; cr. 			ex return].	contenido isNil		ifFalse:[		msg:=contenido.		].	].	self status value:msg.</body>

<body package="Apalabrados-View" selector="comprobarJugadaREST">comprobarJugadaREST	|contenido msg jugador url|	msg:='0'.	jugador:=nomUsr value.	contenido:=''.	url:='http://localhost:8080/apalab-api/comprobarJugada?num=',idPartida,'&amp;jug=',jugador.	contenido:=[(Net.HttpClient get:url) contents ]	on: OSErrorHolder needRetrySignal, OS.OSErrorHolder peerFaultSignal	do: [:ex | Transcript show: 'Imposilbe conectar'; cr. 			ex return].	contenido isNil		ifFalse:[		msg:=contenido.		puntos value:msg asNumber.		].	self status value:msg,' puntos'.</body>

<body package="Apalabrados-View" selector="obtenerFichas">obtenerFichas	|contenido msg miStream miCar jugador|	msg:='Servidor no ok'.	jugador:=nomUsr value.	contenido:=''.	contenido:=[(Net.HttpClient 		get:'http://localhost:8080/apalab-api/obtenerFichas?num=',idPartida,'&amp;jug=',jugador) contents ]	on: OSErrorHolder needRetrySignal, OS.OSErrorHolder peerFaultSignal	do: [:ex | Transcript show: 'Imposilbe conectar'; cr. 			ex return].	contenido isNil		ifFalse:[		miStream:=contenido readStream.		fichasRest removeAll.		[ miStream atEnd ] whileFalse:		[ 		miCar := miStream upTo: $,.			fichasRest add:miCar.		msg:='Servidor ok'.		].		miStream close.		].	self status value:msg.</body>

<body package="Apalabrados-View" selector="confirmarJugadaREST">confirmarJugadaREST	|contenido msg jugador url|	msg:='0'.	jugador:=nomUsr value.	contenido:=''.	url:='http://localhost:8080/apalab-api/confirmarJugada?num=',idPartida,'&amp;jug=',jugador.	contenido:=[(Net.HttpClient get:url) contents ]	on: OSErrorHolder needRetrySignal, OS.OSErrorHolder peerFaultSignal	do: [:ex | Transcript show: 'Imposilbe conectar'; cr. 			ex return].	contenido isNil		ifFalse:[		msg:=contenido.		puntos value:msg asNumber.		].	self status value:msg,' puntos'.</body>

<body package="Apalabrados-View" selector="quitarFicha">quitarFicha	|contenido msg jugador unY unX url|	msg:='Servidor no ok'.	jugador:=nomUsr value.	contenido:=''.	(vTable selectionIndex isNil) 	ifFalse:[	unY:=(vTable selectionIndex y) printString.	unX:=(vTable selectionIndex x) printString.	url:='http://localhost:8080/apalab-api/quitarFicha?num=',idPartida,'&amp;jug=',jugador,'&amp;enY=',unY,'&amp;enX=',unX.	contenido:=[(Net.HttpClient get:url) contents ]	on: OSErrorHolder needRetrySignal, OS.OSErrorHolder peerFaultSignal	do: [:ex | Transcript show: 'Imposilbe conectar'; cr. 			ex return].	contenido isNil		ifFalse:[		msg:=contenido.		].	].	self status value:msg.</body>
</methods>

<methods>
<class-id>ApalabradosUI</class-id> <category>initialize-release</category>

<body package="Apalabrados-View" selector="initialize">initialize	colTab:=TwoDList columns:15 rows:15.	fichasRest:=List new.</body>

<body package="Apalabrados-View" selector="inicio">inicio"	jug misFichas:(juego dameFichas:7).	jug verMisFichas.	juego tablero imprimirTablero.	fichas:= SelectionInList with:jug misFcar.	self nomUsr value:jug nombre."	self obtenerTablero.	sightingsTable := SelectionInTable with: colTab. "juego tablero colTablero."	vTable := TableInterface new		selectionInTable: sightingsTable.	vTable columnWidths: #(20).	self obtenerFichas.	fichas:=SelectionInList with:fichasRest.	self esMiTurno."	status:=(AspectAdaptor subject: juego sendsUpdates: true) forAspect:#status.	puntos := (AspectAdaptor subject: jug sendsUpdates: true) forAspect:#puntos."</body>
</methods>

<methods>
<class-id>ApalabradosUI</class-id> <category>aspects</category>

<body package="Apalabrados-View" selector="sightingsTable:">sightingsTable:unTable sightingsTable:=unTable.</body>

<body package="Apalabrados-View" selector="sightingsTable">sightingsTable ^sightingsTable</body>

<body package="Apalabrados-View" selector="vTable">vTable	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^vTable isNil		ifTrue:			[vTable := TableInterface new selectionInTable: SelectionInTable new]		ifFalse:			[vTable]</body>

<body package="Apalabrados-View" selector="nombre">nombre	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^nombre isNil		ifTrue:			[nombre := String new asValue]		ifFalse:			[nombre]</body>

<body package="Apalabrados-View" selector="fichas">fichas	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^fichas isNil		ifTrue:			[fichas := SelectionInList new]		ifFalse:			[fichas]</body>

<body package="Apalabrados-View" selector="status">status	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^status isNil		ifTrue:			[status := String new asValue]		ifFalse:			[status]</body>

<body package="Apalabrados-View" selector="nomUsr">nomUsr	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^nomUsr isNil		ifTrue:			[nomUsr := String new asValue]		ifFalse:			[nomUsr]</body>

<body package="Apalabrados-View" selector="puntos">puntos	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^puntos isNil		ifTrue:			[puntos := 0 asValue]		ifFalse:			[puntos]</body>

<body package="Apalabrados-View" selector="turno">turno	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^turno isNil		ifTrue:			[turno := String new asValue]		ifFalse:			[turno]</body>
</methods>

<methods>
<class-id>ApalabradosUI</class-id> <category>interface opening</category>

<body package="Apalabrados-View" selector="postOpenWith:">postOpenWith: aBuilder 	self colorear.</body>
</methods>

<methods>
<class-id>ApalabradosUI</class-id> <category>updating</category>

<body package="Apalabrados-View" selector="colorear">colorear	|pos fic wrapper lookPref |	wrapper:=(self wrapperAt:#Region1).	(self esMiTurno)		ifTrue:[		lookPref:=wrapper lookPreferences backgroundColor: ColorValue green.		wrapper lookPreferences: lookPref.		]		ifFalse:[		lookPref := wrapper lookPreferences backgroundColor: ColorValue black.		wrapper lookPreferences: lookPref.	].	self obtenerFichas.	self obtenerTablero.	1 to:15 do:[:fila |	1 to:15 do:[:col | 		pos:=col@fila.		fic:= colTab at:pos. "juego obtenerCeldaEn:col@fila."		(fic = 'TP') 			ifTrue:[				self vTable foregroundColorAtIndex:pos put: (ColorValue white).				self vTable backgroundColorAtIndex: pos put: (ColorValue red). 			].		(fic = 'TL') 			ifTrue:[				self vTable foregroundColorAtIndex:(pos) put: (ColorValue white).				self vTable backgroundColorAtIndex: pos put: (ColorValue green). 			].		(fic = 'DL') 			ifTrue:[				self vTable foregroundColorAtIndex:(pos) put: (ColorValue white).				self vTable backgroundColorAtIndex: pos put: (ColorValue blue). 			].		(fic = 'TP') 			ifTrue:[				self vTable foregroundColorAtIndex:(pos) put: (ColorValue white).				self vTable backgroundColorAtIndex: pos put: (ColorValue red). 			].		(fic = 'DP')			ifTrue:[				self vTable foregroundColorAtIndex:pos put: (ColorValue white).				self vTable backgroundColorAtIndex: pos put: (ColorValue orange). 		].		((fic ~= ' ') &amp; (fic ~='TL') &amp; (fic ~='TP')&amp; (fic ~='DL')&amp; (fic ~='DP'))			ifTrue:[				self vTable foregroundColorAtIndex:(pos) put: (ColorValue white).				self vTable backgroundColorAtIndex: pos put: (ColorValue black). 			].		]		].</body>
</methods>


<methods>
<class-id>LanzaAp class</class-id> <category>resources</category>

<body package="Apalabrados-View" selector="icono">icono	"Tools.UIMaskEditor new openOnClass: self andSelector: #icono"	&lt;resource: #image&gt;	^CachedImage on: (Image extent: 32@32 depth: 1 bitsPerPixel: 1 palette: CoveragePalette monoMaskPalette usingBits: #[0 0 0 0 7 192 0 0 15 224 0 0 31 240 0 0 63 248 0 0 127 252 0 0 124 124 120 0 120 62 254 0 120 63 255 0 120 63 255 128 120 63 255 192 124 127 239 192 127 255 199 224 127 255 131 224 127 255 1 224 127 255 1 224 124 127 1 224 124 63 131 224 124 63 199 192 124 63 239 128 124 63 255 128 124 63 255 0 124 63 254 0 124 63 252 0 124 31 224 0 124 15 224 0 60 7 224 0 28 7 224 0 12 3 224 0 4 1 224 0 0 0 224 0 0 0 96 0])</body>
</methods>

<methods>
<class-id>LanzaAp class</class-id> <category>interface specs</category>

<body package="Apalabrados-View" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#label: 'Lanzador' 			#min: #(#{Core.Point} 475 289 ) 			#max: #(#{Core.Point} 475 289 ) 			#bounds: #(#{Graphics.Rectangle} 482 305 957 594 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 16.5 233 104.0 256 ) 					#name: #ActionButton1 					#model: #lanzaJug1 					#label: 'Jugador1' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 19 148 221 173 ) 					#name: #InputField1 					#model: #usr1 ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 19 28 136 52 ) 					#name: #InputField2 					#model: #usr2 ) 				#(#{UI.RadioButtonSpec} 					#layout: #(#{Core.Point} 97 179 ) 					#name: #RadioButton1 					#model: #lang 					#label: 'Español' 					#select: #langSp ) 				#(#{UI.RadioButtonSpec} 					#layout: #(#{Core.Point} 97 197 ) 					#name: #RadioButton2 					#model: #lang 					#label: 'English' 					#select: #langEng ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 19 124 ) 					#name: #Label1 					#label: 'Nombre jugador:' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 19 6 ) 					#name: #Label2 					#label: 'Nombre de la partida:' ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 19 63 73 91 ) 					#name: #crear 					#model: #crear 					#label: 'Crear' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 159 62 224 90 ) 					#name: #ActionButton4 					#model: #reset 					#label: 'Reset' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 1 260 247 288 ) 					#name: #status 					#model: #status 					#isReadOnly: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 113 231 240 259 ) 					#name: #ActionButton5 					#model: #unirme 					#label: 'Unirme a la partida' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 140 27 224 55 ) 					#name: #ActionButton6 					#model: #lista 					#label: 'Lista partidas' 					#defaultable: true ) 				#(#{UI.TableViewSpec} 					#layout: #(#{Graphics.Rectangle} 246 0 473 287 ) 					#name: #Table1 					#flags: 13 					#model: #listaPartidas 					#callbacksSpec: 					#(#{UI.UIEventCallbackSubSpec} 						#doubleClickSelector: #selPartida ) 					#showHGrid: true 					#showVGrid: true ) ) ) )</body>
</methods>


<methods>
<class-id>LanzaAp</class-id> <category>initialize-release</category>

<body package="Apalabrados-View" selector="iniPartidas">iniPartidas	1 to:15 do:[:fil |		1 to:3 do:[:col |			partidas at:col@fil put:'']].</body>

<body package="Apalabrados-View" selector="initialize">initialize	lang := #langSp asValue.	"self conectar."	partidas:=TwoDList columns:3 rows:15.	self iniPartidas.	sightingsTable := SelectionInTable with: partidas.	listaPartidas := TableInterface new selectionInTable: sightingsTable.	listaPartidas columnLabelsArray:#('Nombre partida' 'Jug1' 'Jug2');		columnWidths:#(100 50 50).</body>
</methods>

<methods>
<class-id>LanzaAp</class-id> <category>accessing</category>

<body package="Apalabrados-View" selector="ap2:">ap2:apUI	ap2:=apUI</body>

<body package="Apalabrados-View" selector="juego:">juego:unJuego	juego:=unJuego</body>

<body package="Apalabrados-View" selector="jug1:">jug1:unJugador	jug1:=unJugador</body>

<body package="Apalabrados-View" selector="sightingsTable">sightingsTable	^sightingsTable</body>

<body package="Apalabrados-View" selector="ap1:">ap1:apUI	ap1:=apUI</body>

<body package="Apalabrados-View" selector="idPartida">idPartida	^idPartida</body>

<body package="Apalabrados-View" selector="jug2">jug2	^jug2</body>

<body package="Apalabrados-View" selector="ap1">ap1	^ap1</body>

<body package="Apalabrados-View" selector="jug1">jug1	^jug1</body>

<body package="Apalabrados-View" selector="idPartida:">idPartida:aNum	idPartida:=aNum.</body>

<body package="Apalabrados-View" selector="jug2:">jug2:unJugador	jug2:=unJugador</body>

<body package="Apalabrados-View" selector="juego">juego	^juego</body>

<body package="Apalabrados-View" selector="ap2">ap2	^ap2</body>
</methods>

<methods>
<class-id>LanzaAp</class-id> <category>aspects</category>

<body package="Apalabrados-View" selector="status">status	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^status isNil		ifTrue:			[status := String new asValue]		ifFalse:			[status]</body>

<body package="Apalabrados-View" selector="listaPartidas">listaPartidas	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^listaPartidas isNil		ifTrue:			[listaPartidas := TableInterface new selectionInTable: SelectionInTable new]		ifFalse:			[listaPartidas]</body>

<body package="Apalabrados-View" selector="usr1">usr1	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^usr1 isNil		ifTrue:			[usr1 := String new asValue]		ifFalse:			[usr1]</body>

<body package="Apalabrados-View" selector="usr2">usr2	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^usr2 isNil		ifTrue:			[usr2 := String new asValue]		ifFalse:			[usr2]</body>

<body package="Apalabrados-View" selector="lang">lang	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^lang isNil		ifTrue:			[lang := nil asValue]		ifFalse:			[lang]</body>
</methods>

<methods>
<class-id>LanzaAp</class-id> <category>actions</category>

<body package="Apalabrados-View" selector="lista">lista	self listadoPartidas.</body>

<body package="Apalabrados-View" selector="reset">reset	| wrapper |	self resetGet.	wrapper:= self wrapperAt:#crear.	wrapper enable.	self usr2 value:''.	self usr1 value:''.	self iniPartidas.</body>

<body package="Apalabrados-View" selector="selPartida">selPartida	|wrapper col|	col:=listaPartidas selectionIndex x.	col=1		ifFalse:[self status value:'Partida no seleccionada'. ^0].	usr2 value:(partidas at:listaPartidas selectionIndex).	wrapper:= self wrapperAt:#crear.	wrapper disable.</body>

<body package="Apalabrados-View" selector="crear">crear	self conectar.	self listadoPartidas.</body>

<body package="Apalabrados-View" selector="lanzaJug1">lanzaJug1	(usr2 value ='')		ifTrue:[status value:'Seleccione una partida'].	self obtenerId.	(idPartida isNil)		ifFalse:[			self miNombre				ifTrue:[					ap1:=ApalabradosUI new.					ap1 idPartida:idPartida.						ap1 nomUsr value: usr1 value.					ap1 inicio; open.			]		].	self listadoPartidas.</body>

<body package="Apalabrados-View" selector="conectarJugador">conectarJugador (usr1 isNil)	ifFalse:[		self miNombre		 ifTrue:[			ap2:=ApalabradosUI new.			ap2 idPartida:idPartida.				ap2 nomUsr value: usr1 value.			ap2 inicio; open.		]	]</body>

<body package="Apalabrados-View" selector="unirme">unirme	(usr2 value ='')		ifTrue:[status value:'Seleccione una partida'].	self obtenerId.	(idPartida isNil)		ifFalse:[		self miNombre			ifTrue:[			ap2:=ApalabradosUI new.			ap2 idPartida:idPartida.				ap2 nomUsr value: usr1 value.			ap2 inicio; open.]].</body>
</methods>

<methods>
<class-id>LanzaAp</class-id> <category>networking</category>

<body package="Apalabrados-View" selector="obtenerId">obtenerId	|contenido msg tit id|	msg:='Servidor no ok'.	id:=''.	contenido:=''.	(usr2 value = '')	ifTrue:[ msg:='Falta nombre partida']	ifFalse:[		tit:=usr2 value.		contenido:=[(Net.HttpClient 			get:'http://localhost:8080/apalab-api/obtenerId?titulo=',tit) contents ]		on: OSErrorHolder needRetrySignal, OS.OSErrorHolder peerFaultSignal		do: [:ex | Transcript show: 'Imposilbe conectar'; cr. 			ex return].		contenido isNil			ifFalse:[				((contenido findString:'ok' startingAt:1) &gt;0)				ifTrue:[					id:=contenido copyFrom:4 to:(contenido size).					idPartida:=id.					msg:='Servidor ok, id=',id. ].			].	].	self status value:msg.</body>

<body package="Apalabrados-View" selector="miNombre">miNombre	|contenido msg nom ret|	ret:=false.	msg:='No hay jugadores disponibles'.	contenido:=''.	nom:=''.	nom:=usr1 value.	nom =''		ifFalse:[		contenido:=[(Net.HttpClient get:'http://localhost:8080/apalab-api/jugador?nombre=',nom,'&amp;juego=',idPartida) contents ]			on: OSErrorHolder needRetrySignal, OS.OSErrorHolder peerFaultSignal			do: [:ex | Transcript show: 'Imposilbe conectar'; cr. 				ex return].		contenido isNil		ifFalse:[		((contenido size) &gt;=5)			ifTrue:[			msg:='Juego iniciado'.			usr1 value:(contenido copyFrom:3 to:(contenido size)).			ret:=true.			].		].		].	self status value:msg.	^ret.</body>

<body package="Apalabrados-View" selector="listadoPartidas">listadoPartidas	|contenido msg miStream miCar fil col|	fil:=1.	col:=1.	msg:='Servidor no ok'.	contenido:=''.	contenido:=[(Net.HttpClient 			get:'http://localhost:8080/apalab-api/listadoPartidas') contents ]		on: OSErrorHolder needRetrySignal, OS.OSErrorHolder peerFaultSignal		do: [:ex | Transcript show: 'Imposilbe conectar'; cr. 			ex return].		contenido isNil			ifFalse:[				((contenido findString:'No' startingAt:1) &gt;0)					ifFalse:[						miStream:=contenido readStream.						[ miStream atEnd ] whileFalse:[ 		miCar := miStream upTo: $,.		(fil&lt;=15)		ifTrue:[			partidas at:col@fil put:miCar.			col:=col+1.			(col=4) 				ifTrue:[					fil:=fil+1.					col:=1.				]			]						].									msg:='Servidor ok'.				 ]				].	self status value:msg.</body>

<body package="Apalabrados-View" selector="conectar">conectar	|contenido msg tit id|	msg:='Servidor no ok'.	id:=''.	contenido:=''.	(usr2 value = '')	ifTrue:[ msg:='Falta nombre partida']	ifFalse:[		tit:=usr2 value.		contenido:=[(Net.HttpClient 			get:'http://localhost:8080/apalab-api/iniciarJuego?titulo=',tit) contents ]		on: OSErrorHolder needRetrySignal, OS.OSErrorHolder peerFaultSignal		do: [:ex | Transcript show: 'Imposilbe conectar'; cr. 			ex return].		contenido isNil			ifFalse:[				((contenido findString:'ok' startingAt:1) &gt;0)				ifTrue:[					id:=contenido copyFrom:4 to:(contenido size).					idPartida:=id.					msg:='Servidor ok, id=',id. ].			].	].	self status value:msg.</body>

<body package="Apalabrados-View" selector="resetGet">resetGet	|contenido msg |	msg:='Servidor no ok'.	contenido:=''.	contenido:=[(Net.HttpClient 			get:'http://localhost:8080/apalab-api/reset') contents ]		on: OSErrorHolder needRetrySignal, OS.OSErrorHolder peerFaultSignal		do: [:ex | Transcript show: 'Imposilbe conectar'; cr. 			ex return].		contenido isNil			ifFalse:[				((contenido findString:'ok' startingAt:1) &gt;0)				ifTrue:[					msg:='Servidor ok'].			].	self status value:msg.</body>
</methods>



</st-source>
