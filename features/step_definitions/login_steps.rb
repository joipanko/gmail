Dado("que o usuário esteja na página de Acesso") do
  visit'https://accounts.google.com/signin/v2/identifier?passive=1209600&continue=https%3A%2F%2Faccounts.google.com%2F&followup=https%3A%2F%2Faccounts.google.com%2F&flowName=GlifWebSignIn&flowEntry=ServiceLogin'
end

Quando("informo os dados") do |table|
  @usuario = table.rows_hash
    find('#identifierId').set @usuario[:email]
    find('#identifierNext').click
end

Quando("informo a senha") do |table1|
  @usuario2 = table1.rows_hash
    find('#password input').set @usuario2[:senha]
    find('#passwordNext').click
end

Então("usuário vê a seguinte mensagem: {string}") do |string|
  expect(page).to have_content string 
end