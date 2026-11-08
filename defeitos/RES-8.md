# RES-8 — Mensagem de erro da senha permanece após preenchimento

**Tipo:** Defeito funcional  
**Funcionalidade:** Login — Validação de formulário  
**Caso de teste associado:** RES-T33  
**Situação:** Corrigido e validado por reteste manual

## 1. Descrição do defeito

O formulário de login do Resolva mantinha a mensagem de erro do campo Senha mesmo após o usuário preencher o campo.

O comportamento indicava que o estado de validação não estava sendo atualizado corretamente após a entrada de dados.

## 2. Pré-condições

- Aplicação Resolva aberta no navegador.
- Tela de login disponível.

## 3. Procedimento de reprodução

O defeito está relacionado à seguinte sequência de ações:

1. Acessar a tela de login do Resolva.
2. Deixar o campo Senha vazio.
3. Acionar a validação do formulário para apresentar o erro de preenchimento obrigatório.
4. Preencher o campo Senha.
5. Verificar se a mensagem de erro desaparece após o preenchimento.

## 4. Resultado esperado

Após o preenchimento do campo Senha:

- A mensagem de preenchimento obrigatório deve desaparecer.
- O campo deve deixar de apresentar o estado inválido relacionado à ausência de senha.
- A interface deve atualizar a validação de acordo com o conteúdo informado.

## 5. Resultado
