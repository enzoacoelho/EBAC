            #language: pt

            Funcionalidade: Tela de Login
            Como aluno do Portal EBAC
            Quero me autenticar
            Para visualizar minhas notas

            Contexto:
            Dado que eu acesse a página de autenticação do portal EBAC

            Cenário: Autenticação Válida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas "Olá joão"


            Cenário: Usuário inexistente
            Quando eu digitar o usuário "joxxxxao@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta "Usuário inválido"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "sedfdfdfdfnha@123"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario             | senha            | mensagem   |
            | "joao@ebac.com.br"  | "senhajoao@123"  | "Olá João" |
            | "maria@ebac.com.br" | "senhamaria@123" | "Olá João" |
            | "jose@ebac.com.br"  | "senhajose@123"  | "Olá João" |