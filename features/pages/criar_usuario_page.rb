class User < SitePrism::Page
    set_url '/users/new'
    
    element :nome, '#user_name'
    element :sobrenome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, '#user_address'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'
    element :submit, 'input[value="Criar"]'

    def preencher_usuario
        nome.set 'Marlyson Clingio'
        sobrenome.set 'Almeida Coutinho'
        email.set 'marlysonalmeida@gmail.com'
        endereco.set 'Rua 112, Nº 161 - Bairro Timbó/Maracanaú(CE)'
        universidade.set 'Estácio'
        profissao.set 'Desenvolvedor web Ruby on Rails'
        genero.set 'Masculino'
        idade.set '26'
        submit.click
    end
end