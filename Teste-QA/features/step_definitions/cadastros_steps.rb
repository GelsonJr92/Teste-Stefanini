Dado('que acesso a página de cadastro') do
   visit "http://prova.stefanini-jgr.com.br/teste/qa/"
end

Quando('submeto o seguinte formulário de cadastro:') do |table|
    #Converte para Array e já me retorna a primeira posição
    user = table.hashes.first
 
    find("#name").set user[:nome]
    find("#email").set user[:email]
    find("#password").set user[:senha]
    click_button "Cadastrar"
end

Então('sou redirecionado para o Dashboard') do
    expect(page).to have_text "Usuários cadastrados"
    sleep 5
    find("#removeUser1").click
    sleep 5

end