# language: pt
Funcionalidade: Cupom de desconto

  Contexto: 
    Dado que eu tenha produtos no carrinho da EBAC SHOP

  Esquema do Cenário: Aplicar cupom com sucesso
    Quando eu tiver um total de <valor> no carrinho
    E aplicar o cupom "EBAC10"
    Então o valor total deve ser reduzido em 10%

    Exemplos:
      | valor    |
      | "100,00" |
      | "150,00" |

  Esquema do Cenário: Cupom inválido por valor mínimo
    Quando eu tiver um total de <valor_baixo> no carrinho
    E tentar aplicar o cupom "EBAC10"
    Então deve exibir a mensagem "Cupom disponível apenas para compras acima de 100 reais"

    Exemplos:
      | valor_baixo |
      | "99,99"     |
      | "50,00"     |

  Cenário: Cupom digitado incorretamente
    Quando eu tentar aplicar o cupom "EBA10"
    Então deve exibir uma mensagem de alerta "Cupom inválido"
