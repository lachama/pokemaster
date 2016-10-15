Given(/^que abri la aplicacion$/) do
  visit '/'
end

#Scenario 1

Then(/^debo ver el titulo de bienvenida "([^"]*)"$/) do |arg1|
  expect(page.body).to match /#{text}/m
end

#Scenario 2

When(/^inicio la partida$/) do
   click_button('inicioBtn')
end

Then(/^la partida comienza$/) do
	 expect(find('#jugada').text).to eq 'Realizar jugadas'
end

# #US Realizar Jugada
# Given(/^que he iniciado la partida$/) do
#   visit '/'
#   click_button('inicioBtn')
# end

# When(/^ingreso la jugada "([^"]*)"$/) do |value|
#  	fill_in('numeroJugada', :with => value)
# end

# Then(/^veo "([^"]*)" en las jugadas anteriores$/) do |texto|
# 	find('td', text: texto).should have_content(texto)
# end

