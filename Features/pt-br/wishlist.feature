# language: pt
Funcionalidade: Lista de Desejos

  Contexto:
    Dado que eu esteja logado na minha conta e na página de um produto

  Cenário: Adicionar produto à lista de desejos
    Quando eu clicar no ícone de "Adicionar à Lista de Desejos"
    Então o produto deve ser listado na minha página de favoritos

  Cenário: Remover produto da lista de desejos
    Dado que eu já tenha um produto na minha lista de desejos
    Quando eu desmarcar o ícone de favorito
    Então o produto deve ser removido da minha página de favoritos
