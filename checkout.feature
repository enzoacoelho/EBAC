#language: pt

Funcionalidade: Cadastro - Checkout

  Contexto:
    Dado que eu estou na tela de cadastro - checkout da EBAC-SHOP

  Esquema do Cenário: Cadastro de múltiplos clientes
    Quando eu preencher o <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone> e <email>
    E clicar em finalizar compra
    Então o sistema deve processar o meu pedido com sucesso

    Exemplos:
      | nome   | sobrenome | pais     | endereco       | cidade       | cep         | telefone     | email                |
      | "Enzo" | "Coelho"  | "Brasil" | "Rua EBAC 123" | "São Paulo"  | "01234-567" | "1199999999" | "enzo@ebac.com.br"   |
      | "Ana"  | "Silva"   | "Brasil" | "Av Paulista"  | "São Paulo"  | "01000-000" | "1188888888" | "ana@teste.com.br"   |
      | "Jose" | "Santos"  | "Brasil" | "Rua Flores"   | "Curitiba"   | "80000-000" | "4177777777" | "jose@provedor.com"  |

  Cenário: E-mail com formato inválido
    Quando eu preencher os campos obrigatórios
    Mas digitar o e-mail "enzoebac.com.br"
    Então deve exibir uma mensagem de erro "E-mail com formato inválido"

  Cenário: Campos obrigatórios vazios
    Quando eu tentar finalizar o cadastro sem preencher os campos marcados com asterisco
    Então deve exibir uma mensagem de alerta "Preencha todos os campos obrigatórios"