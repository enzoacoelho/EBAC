# language: pt
Funcionalidade: Redefinição de Senha

  Contexto:
    Dado que eu esteja na página de redefinição de senha da EBAC SHOP

  Esquema do Cenário: Validação de tamanho mínimo
    Quando eu tentar cadastrar a nova senha <senha_curta>
    Então deve exibir a mensagem de alerta "Sua senha deve ter no mínimo 8 caracteres"

    Exemplos: 
      | senha_curta |
      | "1234567"   |
      | "abc123"    |

  Cenário: Senhas não coincidem
    Quando eu informar a nova senha "12345678"
    E confirmar com a senha "87654321"
    Então deve exibir o alerta "Senhas não coincidem, tente novamente"

  Cenário: Uso de senha anterior
    Dado que minha senha atual seja "antiga123"
    Quando eu tentar redefinir para a mesma senha "antiga123"
    Então deve exibir a mensagem "Sua nova senha não pode ser a mesma que a antiga"
