Feature:
	Como: Carlitos
	Quiero: quiero iniciar el juego
	Para: jugar

#Criterios de Aceptacion
Scenario: Quiero un titulo de bienvenida
	Given que abri la aplicacion
	Then debo ver el campo de ingreso de la jugada
	And la tabla de jugadas previas en blanco