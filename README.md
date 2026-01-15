# 🛒 EBAC-SHOP: Documentação de Cenários de Teste (BDD)

Este repositório contém a documentação dos comportamentos esperados (BDD) para a plataforma EBAC-SHOP, desenvolvida durante o módulo de Qualidade de Software da **EBAC**. Os cenários foram escritos em **Gherkin**, utilizando o padrão declarativo para focar nas regras de negócio e garantir a qualidade das entregas.

## 🚀 Funcionalidades Mapeadas

### 1. Configuração de Produto
- Seleção dinâmica de cor, tamanho e quantidade.
- **Regra de Negócio:** Limite máximo de 10 unidades por venda.
- **Manutenção:** Opção de limpar configurações para retornar ao estado original.

### 2. Login na Plataforma
- Autenticação de múltiplos perfis de usuário utilizando Esquemas de Cenário.
- **Tratamento de Erros:** Mensagens de alerta específicas para credenciais inválidas ou usuários inexistentes.

### 3. Cadastro e Checkout
- Fluxo de finalização de compra com preenchimento de dados obrigatórios.
- **Validação de Dados:** Verificação de formato de e-mail e obrigatoriedade de campos.

### 4. Cupons de Desconto
- Aplicação de descontos percentuais baseados no valor total do carrinho.
- **Regra de Negócio:** Validação de valor mínimo para ativação do cupom.
- **Segurança:** Tratamento para cupons expirados ou códigos inexistentes.

### 5. Controle de Estoque
- Validação de disponibilidade física de produtos antes da adição ao carrinho.
- **UX:** Mensagens informativas ao tentar exceder a quantidade disponível em estoque.

### 6. Redefinição de Senha
- Fluxo de alteração de senha com critérios de segurança.
- **Regras de Negócio:** Tamanho mínimo de 8 caracteres e validação de coincidência entre os campos.
- **Histórico:** Bloqueio de reutilização de senhas antigas.

### 7. Busca de Produtos
- Pesquisa por termos específicos e categorias.
- **Tratamento de Erros:** Exibição de mensagem informativa quando nenhum produto é encontrado.

### 8. Lista de Desejos (Wishlist)
- Gerenciamento de produtos favoritos para compra posterior.
- **Comportamento:** Validação visual da adição e remoção de itens na lista do usuário.

## 🛠️ Tecnologias e Conceitos Aplicados
- **Linguagem:** Gherkin (#language: pt)
- **Metodologia:** BDD (Behavior Driven Development)
- **Técnicas de Teste:** Análise de Valor Limite e Escrita Declarativa.

---
*Repositório mantido por Enzo Coelho*
