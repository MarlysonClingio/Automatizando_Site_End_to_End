Quando('eu entro na janela e verifico a mensagem') do
    visit '/mudancadefoco/janela'

    window = window_opened_by do
        click_link 'Clique aqui'
    end

    within_window window do
        expect(current_url).to eql 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        @mensagem = find('.red-text.text-darken-1.center')
        expect(@mensagem.text).to eql 'Você Abriu uma nova janela!!'
        sleep 2

        window.close
        sleep 2
    end
end

Quando('eu entro no alert e verifico eu faco a acao') do
    visit '/mudancadefoco/alert'

    find('button[onclick="jsAlert()"]').click
    sleep 2
    page.accept_alert
    sleep 2

    find('button[onclick="jsConfirm()"]').click
    sleep 2
    page.dismiss_confirm
    sleep 2

    find('button[onclick="jsPrompt()"]').click
    sleep 2
    page.accept_prompt(with: 'Seja Bem-Vindo Marlyson Clingio')
    #page.dismiss_prompt
    sleep 2
end