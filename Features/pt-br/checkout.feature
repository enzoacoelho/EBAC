# language: pt
Funcionalidade: Tela de cadastro - Checkout
  Como cliente da EBAC SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que eu esteja na página de checkout da EBAC SHOP

  Cenário: Cadastro com todos os dados obrigatórios
    Quando eu preencher todos os campos obrigatórios marcados com asterisco
    E clicar em "Finalizar Compra"
    Então o sistema deve processar meu pedido com sucesso

  Cenário: Cadastro com e-mail inválido
    Quando eu preencher o campo e-mail com "usuario.dominio.com"
    Então o sistema deve exibir uma mensagem de erro "Formato de e-mail inválido"

  Cenário: Campos vazios no checkout
    Quando eu tentar finalizar a compra deixando campos obrigatórios vazios
    Então o sistema deve exibir um alerta "Preencha todos os campos obrigatórios"
