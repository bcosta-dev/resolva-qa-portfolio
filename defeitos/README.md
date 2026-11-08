# Registro de Defeitos — Resolva

Esta pasta reúne os defeitos identificados durante os testes funcionais do formulário de login do Resolva.

Os registros apresentam os comportamentos observados, resultados esperados, procedimentos de reprodução e validações realizadas após as correções.

## Defeitos documentados

| ID | Descrição | Situação |
|---|---|---|
| [RES-3](RES-3.md) | E-mail aceita pontos consecutivos no domínio | Corrigido e retestado |
| [RES-6](RES-6.md) | E-mail aceita pontos consecutivos antes do @ | Corrigido e retestado |
| [RES-7](RES-7.md) | Erro do e-mail permanece após correção | Corrigido e retestado |
| [RES-8](RES-8.md) | Erro da senha permanece após preenchimento | Corrigido e retestado |

## Processo de qualidade

Os defeitos foram registrados e acompanhados no Jira, com testes documentados e executados no Zephyr Essential.

Os registros permitem acompanhar o ciclo de identificação, correção e reteste.

## Escopo

Os defeitos apresentados estão relacionados à validação do formulário de login. A aplicação ainda não possui autenticação real integrada a um backend.
