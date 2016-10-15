Feature:
	Como: Carlitos
	Quiero: quiero iniciar el juego
	Para: jugar

#Criterios de Aceptacion
Scenario: Quiero un titulo de bienvenida
	Given que abri la aplicacion
	Then debo ver el titulo de bienvenida "Bienvenido al POKEMASTER"

Scenario: Iniciar la partida
	Given que abri la aplicacion
	When inicio la partida
	Then la partida comienza