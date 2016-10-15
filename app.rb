require 'sinatra'
require 'better_errors'
require './lib/game.rb'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

enable :sessions
set :session_secret, 'thisIsAKleerSecret'

get '/' do
	erb :index
end

get '/iniciar' do 
	session["game"] = Game.new "1234"
	session['jugadasAnteriores'] = session["game"].getJugadas
 	erb :jugada
end

post '/jugada' do 
	session["game"].jugar params['jugada']
	session['jugadasAnteriores'] = session["game"].getJugadas
 	erb :jugada
end