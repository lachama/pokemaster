require './lib/game'

describe 'Validador del juego' do 

    it 'valida las fijas' do
    	#arrange
    	validator = Gamevalidator.new "1234"
    	#act
    	fijas = validator.validarFijas "5264"
    	#assert
    	expect(fijas).to eq 2
    end
	
end