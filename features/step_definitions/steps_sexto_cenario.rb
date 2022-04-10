Dado('que eu tenha {int} contas desativadas') do |conta|
    @contas = conta
end

Quando('eu ativo {int} contas') do |conta|
    @contas -= conta
    @ativadas = conta
end

Então('o total de contas desativadas é de {int}') do |conta|
    expect(@contas).to eq 10
end

Então('o total de contas ativadas é de {int}') do |conta|
    expect(@ativadas).to eq 10
end    