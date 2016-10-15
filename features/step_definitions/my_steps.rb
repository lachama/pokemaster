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

Then(/^veo (\d+) fijas en los resultados$/) do |arg1|
   expect(find('#fijas'))
end

#US Realizar Jugada
Given(/^que he iniciado la partida$/) do
  visit '/'
  click_button('inicioBtn')
end

When(/^ingreso la jugada "([^"]*)"$/) do |val1|
 	fill_in('numeroJugada', :with => val1)
 	click_button('enviarJugada')
end


Then(/^veo "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)" en las jugadas anteriores$/) do |val1, val2, val3, val4|
  	 expect(find('#number0_row0').text).to eq val1
  	expect(find('#number1_row0').text).to eq val2
  	expect(find('#number2_row0').text).to eq val3
 	expect(find('#number3_row0').text).to eq val4
end
