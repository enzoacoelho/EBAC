# language: pt
Funcionalidade: Configurar produto
  Como cliente da EBAC SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que eu esteja na página de um produto na EBAC SHOP

  Cenário: Seleção de itens obrigatórios
    Quando eu selecionar a cor "Blue", o tamanho "M" e a quantidade "2"
    E clicar no botão "Comprar"
    Então o produto deve ser adicionado ao carrinho com as configurações selecionadas

  Cenário: Limpar configurações
    Dado que eu tenha selecionado cor, tamanho e quantidade
    Quando eu clicar no botão "Limpar"
    Então a seleção de cor, tamanho e quantidade deve voltar ao estado original

  Esquema do Cenário: Validar limite de quantidade
    Quando eu selecionar a cor "Red", o tamanho "XL" e a quantidade <qtd>
    Então deve exibir uma mensagem de alerta "Limite de 10 produtos por venda excedido"

    Exemplos:
      | qtd |
      | 11  |
      | 15  |
      | 20  |
