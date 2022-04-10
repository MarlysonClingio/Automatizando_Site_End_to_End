Dado('que eu tenho {int} contas no sistema') do |conta|
    @contas = conta
end

Quando('eu crio {int} contas no sistema') do |conta|
    @contas += conta
end

Então('eu verifico se o sistema foi atualizado para {int} contas') do |conta|
    expect(@contas).to eq conta
end

Quando('eu deleto {int} contas no sistema') do |conta|
    @contas -= conta
end

Então('eu verifico se o total de contas foi atualizado para {int} contas') do |conta|
    expect(@contas).to eq conta
end