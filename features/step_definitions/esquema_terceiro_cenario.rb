Quando('eu multiplico minhas {int} por {int}') do |contas, valor|
    @multiplicacao = contas * valor
end

Entao('eu analiso a quantidade de contas multiplicadas: {int}') do |resultado|
   expect(@multiplicacao).to eq resultado
end