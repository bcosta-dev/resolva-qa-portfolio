# RES-3 — Campo de e-mail aceita pontos consecutivos no domínio

**Identificador de referência:** RSL-01  
**Tipo:** Defeito funcional  
**Severidade sugerida:** Média  
**Situação:** Corrigido e validado por reteste manual  
**Caso de teste de referência:** CT-NEG-01

## Descrição do defeito

O formulário de login do Resolva aceitava endereços de e-mail com pontos consecutivos no domínio, sem apresentar uma mensagem de erro.

## Pré-condições

- Aplicação Resolva aberta no navegador.
- Tela de login disponível.

## Passos para reprodução

1. Acessar a tela de login do Resolva.
2. Preencher o campo E-mail com `ana@empresa..com`.
3. Preencher o campo Senha com um valor não vazio.
4. Clicar no botão Entrar.

## Resultado esperado

O formulário deve identificar o formato inválido e apresentar uma mensagem de erro associada ao campo E-mail.

## Resultado obtido

O formulário não apresentava mensagem de erro para o endereço informado e tratava o formato como válido.

## Frequência

Defeito reproduzido em uma execução manual. A repetibilidade não foi verificada naquele momento.

## Origem

Auditoria de interface Impeccable, com reprodução manual posterior.

## Correção e reteste

Após a correção, foram executados cinco cenários de validação manual: três testes negativos e dois testes de regressão.

| ID | Cenário | Resultado |
|---|---|---|
| RT-01 | E-mail com pontos consecutivos | Aprovado — rejeitado |
| RT-02 | E-mail com sublinhado no domínio | Aprovado — rejeitado |
| RT-03 | E-mail com hífen inicial no domínio | Aprovado — rejeitado |
| RG-01 | E-mail válido | Aprovado — aceito |
| RG-02 | E-mail válido contendo `+` | Aprovado — aceito |

**Resultado final:** 5 testes aprovados e 0 reprovados.

## Conclusão

O defeito RES-3 foi corrigido e validado nos cenários executados. Não foram identificadas regressões durante esses testes.

Foi recomendada a conclusão do defeito como resolvido, com registro da evidência de reteste.

## Limitação do escopo

O Resolva ainda não possui autenticação real integrada a um backend. Este defeito se refere exclusivamente à validação do formulário de login, não à autenticação de usuários.
