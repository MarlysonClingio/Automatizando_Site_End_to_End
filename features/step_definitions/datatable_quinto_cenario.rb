Dado('que eu tenho certa quantia de contas') do |table|
    @contas = table.rows_hash['conta'].to_i
end
  
Quando('eu desativo {int} contas') do |conta|
    @contas -= conta
end

Então('eu verifico a quantidade de contas depois de desativadas') do
    expect(@contas).to eq 12
end

Dado('que eu tenho uma quantidade de contas') do |table|
    table.hashes.each do |conta|
        @contas = conta['conta'].to_i
    end
end

Quando('eu deleto {int} contas') do |conta|
    @contas -= conta
end

Então('eu verifico a quantidade de contas depois de deletadas') do
    expect(@contas).to eq 5
end