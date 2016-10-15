Given(/^que abri la aplicacion$/) do
  visit '/'
end

Then(/^debo ver el campo de ingreso de la jugada$/) do
   expect(find('#inicioBtn'))
end

Then(/^la tabla de jugadas previas en blanco$/) do
  expect(find('#jugadasPrevias'))
end
