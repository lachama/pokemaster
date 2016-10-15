Feature: 
	Como jugador
	Quiero ingresar una jugada
	Para ver si gano o pierdo

Scenario: Ver las jugadas anteriores
 	Given que he iniciado la partida
 	When ingreso la jugada "1234"
 	Then veo "1234" en las jugadas anteriores

# Scenario: Ver las fijas
# 	Given que he iniciado la partida
# 	And que el numero a adivinar es "1234"
# 	When ingreso la jugada "5264"
# 	Then veo 2 fijas en los resultados
