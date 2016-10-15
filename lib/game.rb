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
	jugada = Array.new
	jugada << numero[0]
	jugada << numero[1]
	jugada << numero[2]
	jugada << numero[3]
	@jugadas << jugada

end

def getJugadas
	@jugadas
end
end