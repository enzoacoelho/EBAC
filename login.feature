#language: pt

Funcionalidade: Login 

  Contexto:
    Dado que eu acesse a página de autenticação da EBAC-SHOP

  Esquema do Cenário: Autenticação válida
    Quando eu digitar o usuário <usuario>
    E a senha <senha>
    Então devo ser redirecionado para a tela de checkout

    Exemplos:
      | usuario             | senha            |
      | "enzo@ebac.com.br"  | "senhaenzo@123"  |
      | "quezia@ebac.com.br" | "senhaquezia@123" |

  Cenário: Usuário inexistente
    Quando eu digitar o usuário "enzzzzzoo@ebac.com.br"
    E a senha "senha@123"
    Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

  Cenário: Usuário com senha inválida
    Quando eu digitar o usuário "enzo@ebac.com.br"
    E a senha "sedfdfdfdfnha@123"
    Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
