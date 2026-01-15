# language: pt
Funcionalidade: Busca de Produtos

  Contexto:
    Dado que eu esteja na página inicial da EBAC SHOP

  Esquema do Cenário: Busca por palavra-chave válida
    Quando eu pesquisar pelo produto <termo>
    Então o sistema deve exibir uma lista de produtos relacionados a <termo>

    Exemplos:
      | termo         |
      | "Camisa Polo" |
      | "Tênis"       |

  Cenário: Busca por produto inexistente
    Quando eu pesquisar pelo produto "Produto Fantasma 123"
    Então deve exibir a mensagem "Nenhum resultado corresponde à sua busca"
