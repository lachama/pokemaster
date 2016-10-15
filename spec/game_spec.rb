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
    	expect(jugadas).to eq Array["2345", "3456"] 
    end
	
end