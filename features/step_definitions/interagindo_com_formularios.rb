Quando('eu faco um cadastro') do
    visit '/users/new'

    fill_in(id: 'user_name', with: 'Marlyson Clingio')
    find('#user_lastname').set('Almeida Coutinho')
    find('#user_email').send_keys('marlysonalmeida@gmail.com')

    fill_in(id: 'user_address', with: 'Rua 112, Nº 161 - Timbó/Maracanaú(CE)')
    find('#user_university').set('Estácio')
    find('#user_profile').send_keys('Desenvolvedor Web Ruby on Rails')

    find('#user_gender').set('Masculino')
    find('#user_age').send_keys('26')
    find('input[value="Criar"]').click
end

Então('verifico se fui realmente casdastrado') do
   texto = find('#notice')

   expect(texto.text).to eql 'Usuário Criado com sucesso'
end