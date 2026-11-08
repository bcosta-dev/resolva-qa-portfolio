# Resolva — Portfólio de Quality Assurance (QA)

Projeto prático de Quality Assurance desenvolvido para demonstrar conhecimentos em planejamento, documentação, execução e gerenciamento de testes de software, com foco em atividades de um Analista de QA Júnior.

**Área:** Quality Assurance / Testes de Software  
**Tipo de projeto:** Portfólio prático  
**Status:** Em desenvolvimento

---

## 1. Sobre o projeto

O **Resolva** é uma aplicação web voltada ao suporte técnico, com uma interface de login e uma proposta de gerenciamento de chamados.

Este portfólio documenta o trabalho de Quality Assurance realizado sobre a aplicação, incluindo análise de funcionalidades, elaboração de cenários de teste, execução manual, identificação de defeitos, acompanhamento de correções e validação de regressão.

O objetivo é apresentar não apenas os resultados, mas também o processo utilizado para investigar problemas e verificar a qualidade do software.

## 2. Objetivos de QA

- Planejar e documentar cenários de teste.
- Validar o comportamento funcional do formulário de login.
- Verificar a responsividade da interface em diferentes resoluções.
- Identificar, reproduzir e registrar defeitos.
- Acompanhar correções e executar retestes.
- Realizar verificações de regressão.
- Manter rastreabilidade entre itens do Jira, casos de teste e execuções.
- Produzir evidências e relatórios de qualidade.

## 3. Ferramentas e tecnologias

| Ferramenta / Tecnologia | Utilização |
|---|---|
| Jira | Gerenciamento de atividades, requisitos e defeitos |
| Zephyr Essential | Documentação, organização e execução de casos de teste |
| Gherkin / BDD | Descrição de cenários e comportamentos esperados |
| Google Chrome DevTools | Inspeção da interface e validação de comportamentos |
| HTML5 | Estrutura da aplicação testada |
| CSS3 | Estilização e responsividade |
| JavaScript | Validação e comportamento do formulário |
| Node.js | Execução de testes automatizados em JavaScript |
| Git e GitHub | Versionamento e publicação da documentação |

## 4. Escopo dos testes

### 4.1. Testes funcionais — Login

Foram documentados e executados 11 casos de teste relacionados ao formulário de login.

| ID | Cenário |
|---|---|
| RES-T11 | Validar obrigatoriedade do e-mail |
| RES-T12 | Validar rejeição de e-mail inválido |
| RES-T28 | Validar rejeição de pontos consecutivos no e-mail |
| RES-T29 | Validar aceitação de e-mail válido |
| RES-T30 | Validar obrigatoriedade da senha |
| RES-T31 | Validar obrigatoriedade simultânea de e-mail e senha |
| RES-T32 | Validar remoção de erro após correção do e-mail |
| RES-T33 | Validar remoção de erro após preenchimento da senha |
| RES-T34 | Validar alternância entre mostrar e ocultar senha |
| RES-T35 | Validar preservação da senha ao alternar visibilidade |
| RES-T36 | Validar comportamento do formulário com dados válidos |

Os testes contemplaram validações de campos, mensagens de erro, atributos de acessibilidade, interação do usuário e comportamento do formulário.

### 4.2. Testes não funcionais — Responsividade

Foram executados cinco casos para verificar o comportamento visual da tela de login em diferentes resoluções.

| ID | Resolução | Dispositivo simulado |
|---|---|---|
| RES-T6 | 1920 × 1080 | Desktop |
| RES-T7 | 1366 × 768 | Notebook |
| RES-T8 | 768 × 1024 | Tablet |
| RES-T9 | 390 × 844 | Celular |
| RES-T10 | 360 × 640 | Celular pequeno |

Durante a validação, foram identificados problemas de layout que motivaram ajustes e novos testes.

### 4.3. Abertura de chamados — Escopo pendente

Também foram documentados cinco casos relacionados à abertura de chamados, contemplando dados obrigatórios, categorias e autenticação.

Esses casos ainda não possuem execução registrada e não fazem parte dos resultados de aprovação apresentados neste README.

## 5. Estratégia de testes

O trabalho foi organizado em etapas:

1. Análise das funcionalidades disponíveis e definição do escopo.
2. Criação e organização dos casos de teste no Zephyr Essential.
3. Descrição dos cenários utilizando BDD/Gherkin.
4. Execução manual no navegador.
5. Comparação entre resultados esperados e observados.
6. Registro de defeitos no Jira.
7. Correção dos problemas identificados na aplicação.
8. Reteste das funcionalidades corrigidas.
9. Verificação de regressão.
10. Geração de relatórios de execução e rastreabilidade.

As execuções com falha foram preservadas no histórico, permitindo demonstrar a evolução da qualidade após as correções.

## 6. Defeitos identificados

Durante os testes, foram registrados problemas de validação e comportamento da interface.

| Issue | Defeito | Situação |
|---|---|---|
| RES-3 | Aceitação de e-mail com pontos consecutivos no domínio | Corrigido e retestado |
| RES-6 | Aceitação de e-mail com pontos consecutivos antes do `@` | Corrigido e retestado |
| RES-7 | Mensagem de erro do e-mail permanecia após correção do campo | Corrigido e retestado |
| RES-8 | Mensagem de erro da senha permanecia após preenchimento | Corrigido e retestado |

### Exemplo de ciclo de defeito

No cenário RES-T32, foi identificado que uma mensagem de erro continuava visível mesmo depois de o usuário corrigir o e-mail.

O problema foi documentado no Jira como RES-7, associado ao caso de teste e encaminhado para correção.

Após a alteração da aplicação, o cenário foi executado novamente, confirmando que a mensagem desaparecia e o campo retornava ao estado válido.

Esse processo permitiu preservar evidências da falha original e do reteste bem-sucedido.

## 7. Resultados das execuções

Os relatórios do Zephyr Essential apresentam dois recortes: o histórico completo das execuções e o resultado mais recente de cada caso executado.

### Histórico de execuções

| Indicador | Resultado |
|---|---:|
| Execuções registradas | 21 |
| Execuções com sucesso | 17 |
| Execuções com falha | 4 |
| Taxa histórica de sucesso | 80,95% |

As falhas históricas fazem parte do processo de identificação de defeitos e validação das correções.

### Situação após os retestes

| Indicador | Resultado |
|---|---:|
| Casos com execução registrada | 16 |
| Últimas execuções com sucesso | 16 |
| Últimas execuções com falha | 0 |
| Taxa de sucesso nas últimas execuções | 100% |

**Observação:** os 100% representam somente os 16 casos executados. Os cinco casos de abertura de chamados permanecem pendentes e não foram considerados aprovados.

## 8. Rastreabilidade

A rastreabilidade foi organizada para relacionar os casos de teste aos itens correspondentes do Jira.

**Resultado da revisão:**

- 21 casos de teste documentados.
- 21 casos com vínculo de cobertura.
- Nenhum caso sem cobertura no relatório.
- Histórico de execução e reteste preservado.

A cobertura documental foi de **100% dos casos cadastrados**, sem representar necessariamente cobertura integral de todas as funcionalidades da aplicação.

Entre os principais vínculos estão:

| Item do Jira | Cobertura |
|---|---|
| RES-2 | Casos de abertura de chamados |
| RES-4 | Testes de responsividade |
| RES-5 | Ajustes de layout |
| RES-6 | Validação de pontos consecutivos no e-mail |
| RES-7 | Correção de mensagens de erro do e-mail |
| RES-8 | Correção de mensagens de erro da senha |
| RES-9 | 11 casos funcionais do formulário de login |

## 9. Automação e regressão

O projeto também possui uma suíte automatizada em JavaScript, utilizada para apoiar as verificações de regressão do formulário de login.

Durante o desenvolvimento, a suíte foi ampliada para cobrir comportamentos como:

- Rejeição de formatos inválidos de e-mail.
- Validação de campos obrigatórios.
- Atualização das mensagens de erro durante a edição.
- Independência entre os campos de e-mail e senha.
- Comportamento do formulário após correções.
- Preservação da senha ao alternar sua visibilidade.
- Envio do formulário por diferentes interações.

A execução automatizada reportada durante o desenvolvimento apresentou **62 testes aprovados, sem falhas**.

A suíte foi desenvolvida com auxílio de IA e será objeto de revisão e aprofundamento prático, incluindo compreensão e manutenção dos testes.

A automação complementa os testes manuais, mas não substitui a documentação das execuções realizadas no Zephyr.

## 10. Documentação e evidências

O repositório será organizado nas seguintes áreas:

```text
resolva-qa-portfolio/
├── README.md
├── documentacao/
├── casos-de-teste/
├── defeitos/
├── evidencias/
├── relatorios/
└── automacao/
```

### Relatórios produzidos

- **Relatório de rastreabilidade:** relaciona os casos de teste aos itens do Jira.
- **Relatório histórico de execuções:** demonstra sucessos e falhas registrados durante os testes.
- **Relatório final de execuções:** apresenta a situação dos casos após as correções e os retestes.

Os arquivos serão disponibilizados no repositório após revisão e anonimização das informações pessoais.

## 11. Aprendizados e competências desenvolvidas

A realização deste projeto proporcionou experiência prática em:

- Planejamento e organização de testes.
- Escrita de cenários BDD.
- Testes funcionais e de interface.
- Testes de responsividade.
- Análise de resultados esperados e obtidos.
- Identificação e documentação de defeitos.
- Comunicação de problemas de software.
- Retestes e testes de regressão.
- Rastreabilidade entre requisitos, testes e defeitos.
- Interpretação de relatórios de execução.
- Utilização de Jira, Zephyr Essential e ferramentas do navegador.

## 12. Próximos passos

- Publicar os relatórios anonimizados.
- Organizar evidências de execução e defeitos.
- Disponibilizar os cenários BDD documentados.
- Revisar e publicar a automação existente.
- Desenvolver maior autonomia na escrita de testes automatizados.
- Avaliar a execução dos casos de abertura de chamados quando a funcionalidade estiver disponível para testes.

---
