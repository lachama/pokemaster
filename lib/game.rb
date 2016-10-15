class Game

def initialize numeromagico
	@numeromagico = numeromagico
	@jugadas = Array.new
end

#	def validarFijas jugada
#		(1..jugada.lenght).each |index| do
#			if numeromagico[index] == jugada[index]
#				fijas++
#			end
#		end
#	end

def jugar numero
	@jugadas << numero
end

def getJugadas
	@jugadas
end
end