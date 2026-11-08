# Resolva — Portfólio de Quality Assurance (QA)

Projeto prático de Quality Assurance desenvolvido para demonstrar conhecimentos em planejamento, documentação, execução e gerenciamento de testes de software, com foco em atividades de um Analista de QA Júnior.

**Responsável:** Bernardo  
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
| RES-T35 | Validar preservação da senha
