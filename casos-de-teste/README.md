# Casos de Teste — Resolva

Esta pasta reúne os **21 casos de teste documentados no Zephyr Essential**, preservando os formatos originais Step by Step e BDD (Gherkin).

## Organização

| Funcionalidade | Casos | Formato | Documentação |
|---|---|---|---|
| Login | RES-T11 e RES-T12 | Step by Step | [Testes de login](login_step_by_step.md) |
| Login | RES-T28 a RES-T36 | BDD (Gherkin) | Arquivos `RES-T28.feature` a `RES-T36.feature` |
| Responsividade | RES-T6 a RES-T10 | Step by Step | [Testes de responsividade](responsividade_step_by_step.md) |
| Abertura de chamados | RES-T1 a RES-T5 | Step by Step | [Testes de abertura de chamados](abertura_chamados_step_by_step.md) |

## Situação das execuções

- **21 casos documentados**, com vínculos de rastreabilidade no Jira.
- **16 casos executados**, com sucesso nas últimas execuções registradas.
- **5 casos ainda não executados**, referentes à abertura de chamados.

Os resultados e o histórico das execuções estão disponíveis na pasta [`relatorios/`](../relatorios/).

## Observações

Os arquivos `.feature` representam cenários BDD documentados no Zephyr. Sua publicação não significa que já estejam automatizados.

Os testes de abertura de chamados serão executados quando a funcionalidade estiver implementada.
