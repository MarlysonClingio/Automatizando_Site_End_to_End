#language: pt

Funcionalidade: Chamando outros steps

Cenario: Atualizando contas
Dado que eu tenha 20 contas desativadas
Quando eu ativo 10 contas
Então o total de contas desativadas é de 10
Mas o total de contas ativadas é de 10