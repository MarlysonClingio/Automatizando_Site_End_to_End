Dado('eu tenha {int} contas.') do |conta|
    @result = conta
end

Quando('eu excluo {int} contas.') do |conta|
    @result -= conta
end

Então('eu analiso a quantidade de contas excluidas.') do
    expect(@result).to eq 8
end

Quando('eu crio {int} contas.') do |conta|
    @result += conta
end

Então('eu analiso a quantidade de contas adicionadas.') do
    expect(@result).to eq 15
end