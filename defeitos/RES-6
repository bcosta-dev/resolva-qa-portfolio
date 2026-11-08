# RES-6 — Campo de e-mail aceita pontos consecutivos antes do @

**Tipo:** Defeito funcional  
**Severidade sugerida:** Média  
**Caso de teste associado:** RES-T28  
**Situação documentada:** Defeito identificado; reteste não informado neste registro.

## 1. Descrição do defeito

O formulário de login do Resolva aceitava endereços de e-mail contendo pontos consecutivos na parte local (antes do `@`), sem apresentar a mensagem de validação esperada.

## 2. Pré-condições

- Aplicação Resolva aberta no navegador.
- Tela de login disponível.

## 3. Passos para reprodução

1. Acessar a tela de login.
2. Preencher o campo E-mail com `teste..usuario@exemplo.com`.
3. Preencher o campo Senha com `Teste123`.
4. Clicar em **Entrar**.

## 4. Resultado esperado

O formulário deve:

- Rejeitar o endereço de e-mail inválido.
- Apresentar a mensagem `Digite um e-mail válido!`.
- Direcionar o foco ao campo E-mail.
- Definir o atributo `aria-invalid="true"`.

## 5. Resultado obtido

O formulário não apresentou a mensagem de erro esperada.

Durante a inspeção pelo Console do navegador, foram identificados os seguintes valores:

| Verificação | Resultado obtido |
|---|---|
| `aria-invalid` | `"false"` |
| Mensagem de erro | `""` (vazia) |

O comportamento observado não correspondeu aos critérios esperados de validação.

## 6. Teste relacionado

**RES-T28 — Validação de e-mail com pontos consecutivos antes do @.**

O caso de teste está documentado em [RES-T28.feature](../casos-de-teste/RES-T28.feature).

## 7. Verificação de regressão relacionada

Durante a investigação, o defeito RES-3, referente a pontos consecutivos no domínio, foi retestado utilizando:

`ana@empresa..com`

A correção do RES-3 permaneceu funcionando.

Esse resultado não comprova, isoladamente, a correção do RES-6, pois os defeitos envolvem partes diferentes do endereço de e-mail.

## 8. Corre
