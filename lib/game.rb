class Game

def initialize numeromagico
	@numeromagico = numeromagico
	@fijas = 0
end

	def validarFijas jugada
		(1..jugada.lenght).each |index| do
			if numeromagico[index] == jugada[index]
				fijas++
			end
		end
	end

end