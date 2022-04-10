Quando('acesso a url') do
    @home = PaginaInicialPage.new
    @home.load
    sleep 2
end

Então('verifico se estou na pagina inicial') do
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
end