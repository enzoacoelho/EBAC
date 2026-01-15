# language: pt
Funcionalidade: Controle de Estoque

  Contexto: 
    Dado que eu acesse a página da "Camisa Polo" que possui 3 unidades em estoque

  Esquema do Cenário: Compra dentro do limite de estoque
    Quando eu adicionar <quantidade> unidades ao carrinho
    Então o sistema deve permitir que eu prossiga para o checkout

    Exemplos:
      | quantidade |
      | 1          |
      | 3          |

  Esquema do Cenário: Tentativa de compra acima do estoque
    Quando eu tentar adicionar <quantidade_excedente> unidades ao carrinho
    Então deve exibir a mensagem de alerta "Apenas 3 unidades disponíveis em estoque"

    Exemplos:
      | quantidade_excedente |
      | 4                    |
      | 10                   |
