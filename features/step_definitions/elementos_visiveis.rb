Quando('clico no botao') do
    visit '/buscaelementos/botoes'
    find('#teste').click
end

Então('verifico se o texto apareceu na tela com sucesso') do
    @texto = find('#div1')
    expect(@texto.text).to eql 'Você Clicou no Botão!'

    page.has_text?('Você Clicou no Botão')
    have_text('Você Clicou no Botão!')
    sleep 3
end