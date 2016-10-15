require './lib/game'

describe Game do 

	before do
		@game = Game.new "1234"
	end

    it "muestra jugadas realizadas" do
    	#arrange
    	@game.jugar "2345"
    	@game.jugar "3456"
    	#act
    	jugadas = @game.getJugadas
    	#assert
    	expect(jugadas).to eq Array[["2","3","4","5", "0", "0"], ["3","4","5","6","0", "0"]] 
    end

    it "cuenta las picas" do
    	#arrange 
    	@game.jugar ""
    	#act
    	#assert
    end

    it "cuenta las fijas" do
    	#arrange
    	@game.jugar "5246"
    	#act
    	jugada = @game.getJugadas[0]
    	#assert
    	expect(jugada[4]).to eq "1"
    end
	
end