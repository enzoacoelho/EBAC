#language: pt

Funcionalidade: Configurar Produto

  Contexto:
    Dado que eu acesse a página de um produto na EBAC-SHOP

  Esquema do Cenário: Seleções válidas
    Quando eu selecionar a cor <cor>
    E o tamanho <tamanho>
    E a quantidade <quantidade>
    E clicar no botão comprar
    Então devo ser redirecionado para a tela de checkout

    Exemplos:
      | cor      | tamanho | quantidade |
      | "Blue"   | "M"     | "9"        |
      | "Orange" | "G"     | "10"       |

  Cenário: Seleção obrigatória ausente
    Quando eu selecionar apenas o tamanho "M"
    E a quantidade "1"
    E clicar no botão comprar
    Então deve exibir uma mensagem de alerta "Selecione uma cor"

  Cenário: Quantidade acima do permitido
    Quando eu selecionar a cor "Blue"
    E o tamanho "M"
    E a quantidade "11"
    Então deve exibir uma mensagem de alerta "Apenas 10 produtos por venda"

  Cenário: Limpar configurações
    Dado que eu selecionei a cor "Blue", o tamanho "S" e a quantidade "2"
    Quando eu clicar no botão "limpar"
    Então todas as seleções devem voltar ao estado original