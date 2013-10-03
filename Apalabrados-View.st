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
<body>ApalabradosUI es la vista del juego.
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
<body>LanzaAp launchs two views of ApalabradosUI
</comment>

<methods>
<class-id>ApalabradosUI class</class-id> <category>interface specs</category>

<body package="Apalabrados-View" selector="windowSpec">windowSpec
</methods>

<methods>
<class-id>ApalabradosUI class</class-id> <category>resources</category>

<body package="Apalabrados-View" selector="icono">icono
</methods>

<methods>
<class-id>ApalabradosUI class</class-id> <category>instance creation</category>

<body package="Apalabrados-View" selector="newJuego:jugador:">newJuego:unJuego jugador:unJugador
</methods>


<methods>
<class-id>ApalabradosUI</class-id> <category>accessing</category>

<body package="Apalabrados-View" selector="colTab:">colTab:aTwoDList

<body package="Apalabrados-View" selector="jug">jug

<body package="Apalabrados-View" selector="fichasRest">fichasRest

<body package="Apalabrados-View" selector="idPartida">idPartida

<body package="Apalabrados-View" selector="juego:">juego:unJuego

<body package="Apalabrados-View" selector="otroAp:">otroAp:apUI

<body package="Apalabrados-View" selector="colTab">colTab

<body package="Apalabrados-View" selector="otroAp">otroAp

<body package="Apalabrados-View" selector="jug:">jug:unJugador

<body package="Apalabrados-View" selector="fichasRest:">fichasRest:unaLista

<body package="Apalabrados-View" selector="idPartida:">idPartida:aString

<body package="Apalabrados-View" selector="juego">juego
</methods>

<methods>
<class-id>ApalabradosUI</class-id> <category>actions</category>

<body package="Apalabrados-View" selector="poner">poner

<body package="Apalabrados-View" selector="meToca">meToca

<body package="Apalabrados-View" selector="actualizarUI">actualizarUI

<body package="Apalabrados-View" selector="comprobarJugada">comprobarJugada

<body package="Apalabrados-View" selector="quitar">quitar

<body package="Apalabrados-View" selector="confirmarJugada">confirmarJugada

<body package="Apalabrados-View" selector="pasar">pasar

<body package="Apalabrados-View" selector="notify">notify
</methods>

<methods>
<class-id>ApalabradosUI</class-id> <category>networking</category>

<body package="Apalabrados-View" selector="obtenerTablero">obtenerTablero

<body package="Apalabrados-View" selector="esMiTurno">esMiTurno

<body package="Apalabrados-View" selector="ponerFicha">ponerFicha

<body package="Apalabrados-View" selector="comprobarJugadaREST">comprobarJugadaREST

<body package="Apalabrados-View" selector="obtenerFichas">obtenerFichas

<body package="Apalabrados-View" selector="confirmarJugadaREST">confirmarJugadaREST

<body package="Apalabrados-View" selector="quitarFicha">quitarFicha
</methods>

<methods>
<class-id>ApalabradosUI</class-id> <category>initialize-release</category>

<body package="Apalabrados-View" selector="initialize">initialize

<body package="Apalabrados-View" selector="inicio">inicio
</methods>

<methods>
<class-id>ApalabradosUI</class-id> <category>aspects</category>

<body package="Apalabrados-View" selector="sightingsTable:">sightingsTable:unTable

<body package="Apalabrados-View" selector="sightingsTable">sightingsTable

<body package="Apalabrados-View" selector="vTable">vTable

<body package="Apalabrados-View" selector="nombre">nombre

<body package="Apalabrados-View" selector="fichas">fichas

<body package="Apalabrados-View" selector="status">status

<body package="Apalabrados-View" selector="nomUsr">nomUsr

<body package="Apalabrados-View" selector="puntos">puntos

<body package="Apalabrados-View" selector="turno">turno
</methods>

<methods>
<class-id>ApalabradosUI</class-id> <category>interface opening</category>

<body package="Apalabrados-View" selector="postOpenWith:">postOpenWith: aBuilder 
</methods>

<methods>
<class-id>ApalabradosUI</class-id> <category>updating</category>

<body package="Apalabrados-View" selector="colorear">colorear
</methods>


<methods>
<class-id>LanzaAp class</class-id> <category>resources</category>

<body package="Apalabrados-View" selector="icono">icono
</methods>

<methods>
<class-id>LanzaAp class</class-id> <category>interface specs</category>

<body package="Apalabrados-View" selector="windowSpec">windowSpec
</methods>


<methods>
<class-id>LanzaAp</class-id> <category>initialize-release</category>

<body package="Apalabrados-View" selector="iniPartidas">iniPartidas

<body package="Apalabrados-View" selector="initialize">initialize
</methods>

<methods>
<class-id>LanzaAp</class-id> <category>accessing</category>

<body package="Apalabrados-View" selector="ap2:">ap2:apUI

<body package="Apalabrados-View" selector="juego:">juego:unJuego

<body package="Apalabrados-View" selector="jug1:">jug1:unJugador

<body package="Apalabrados-View" selector="sightingsTable">sightingsTable

<body package="Apalabrados-View" selector="ap1:">ap1:apUI

<body package="Apalabrados-View" selector="idPartida">idPartida

<body package="Apalabrados-View" selector="jug2">jug2

<body package="Apalabrados-View" selector="ap1">ap1

<body package="Apalabrados-View" selector="jug1">jug1

<body package="Apalabrados-View" selector="idPartida:">idPartida:aNum

<body package="Apalabrados-View" selector="jug2:">jug2:unJugador

<body package="Apalabrados-View" selector="juego">juego

<body package="Apalabrados-View" selector="ap2">ap2
</methods>

<methods>
<class-id>LanzaAp</class-id> <category>aspects</category>

<body package="Apalabrados-View" selector="status">status

<body package="Apalabrados-View" selector="listaPartidas">listaPartidas

<body package="Apalabrados-View" selector="usr1">usr1

<body package="Apalabrados-View" selector="usr2">usr2

<body package="Apalabrados-View" selector="lang">lang
</methods>

<methods>
<class-id>LanzaAp</class-id> <category>actions</category>

<body package="Apalabrados-View" selector="lista">lista

<body package="Apalabrados-View" selector="reset">reset

<body package="Apalabrados-View" selector="selPartida">selPartida

<body package="Apalabrados-View" selector="crear">crear

<body package="Apalabrados-View" selector="lanzaJug1">lanzaJug1

<body package="Apalabrados-View" selector="conectarJugador">conectarJugador

<body package="Apalabrados-View" selector="unirme">unirme
</methods>

<methods>
<class-id>LanzaAp</class-id> <category>networking</category>

<body package="Apalabrados-View" selector="obtenerId">obtenerId

<body package="Apalabrados-View" selector="miNombre">miNombre

<body package="Apalabrados-View" selector="listadoPartidas">listadoPartidas

<body package="Apalabrados-View" selector="conectar">conectar

<body package="Apalabrados-View" selector="resetGet">resetGet
</methods>



</st-source>