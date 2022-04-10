#language: pt

Funcionalidade: Trabalhar com contexto

Contexto:
Dado que eu tenho 10 contas no sistema

Cenario: Criar contas
Quando eu crio 2 contas no sistema
Então eu verifico se o sistema foi atualizado para 12 contas

Cenario: Excluir contas
Quando eu deleto 3 contas no sistema
Então eu verifico se o total de contas foi atualizado para 7 contas