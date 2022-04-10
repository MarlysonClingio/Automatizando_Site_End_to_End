#language: pt

Funcionalidade: Trabalhar com datatable

Cenario: Desativar contas
Dado que eu tenho certa quantia de contas
|conta|15|
Quando eu desativo 3 contas
Então eu verifico a quantidade de contas depois de desativadas


Cenario: Deletar contas
Dado que eu tenho uma quantidade de contas
|conta|
|  10 |
Quando eu deleto 5 contas
Então eu verifico a quantidade de contas depois de deletadas