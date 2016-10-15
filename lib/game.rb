class Game

def initialize numeromagico
	if numeromagico != nil
		@numeromagico = Array[numeromagico[0],numeromagico[1],numeromagico[2],numeromagico[3]]
	end
	@jugadas = Array.new
end

def jugar numero
	jugada = Array.new
	jugada << numero[0]
	jugada << numero[1]
	jugada << numero[2]
	jugada << numero[3]
	jugada << contarFijas(jugada)
	jugada << contarPicas(jugada)
	@jugadas << jugada
end

def getJugadas
	@jugadas
end

	private
	def contarFijas jugada
		fijas = 0
		(0..3).each do |index|
			if @numeromagico[index] == jugada[index]
				fijas = fijas + 1
			end
		end
		return fijas.to_s
	end

	def contarPicas jugada
		picas = 0
		(0..3).each do |indexMagico|
			(0..3).each do |indexGuess|
				if @numeromagico[indexMagico] == jugada[indexGuess]
				   picas = picas + 1
				end
			end
		end
		picas = picas - jugada[4].to_i
		return picas.to_s
	end
end