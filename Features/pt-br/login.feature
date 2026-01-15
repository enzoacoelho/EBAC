# language: pt
Funcionalidade: Login na plataforma
  Como cliente da EBAC SHOP
  Quero fazer o login na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que eu acesse a página de autenticação da EBAC SHOP

  Esquema do Cenário: Autenticação válida
    Quando eu digitar o usuário <usuario>
    E a senha <senha>
    Então deve ser direcionado para a tela de checkout ou minha conta

    Exemplos:
      | usuario             | senha       |
      | "joao@ebac.com.br"  | "senha123"  |
      | "maria@ebac.com.br" | "teste@123" |

  Cenário: Usuário inexistente
    Quando eu digitar o usuário "naoexiste@ebac.com.br"
    E a senha "senha123"
    Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

  Cenário: Senha inválida
    Quando eu digitar o usuário "joao@ebac.com.br"
    E a senha "senha_errada"
    Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
