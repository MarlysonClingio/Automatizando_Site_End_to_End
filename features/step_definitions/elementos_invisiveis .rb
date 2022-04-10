Quando('clico em um botao') do
    visit '/buscaelementos/botoes'
    find('#teste').click
end

Então('verifico se o texto desapareceu na tela com sucesso') do
    page.has_text?('Você Clicou no Botão!')
    have_text('Você Clicou no Botão!')

    find('#teste').click

    has_no_text?('Você Clicou no Botão!')
    have_no_text('Você Clicou no Botão!')
end