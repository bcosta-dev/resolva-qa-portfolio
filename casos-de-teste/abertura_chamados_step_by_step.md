# Casos de teste — Abertura de chamados (Step by Step)

> **Situação de execução:** não executados. Estes são casos planejados no Zephyr Essential; a funcionalidade de abertura de chamados ainda não foi implementada/validada neste projeto.

Os passos e resultados esperados abaixo foram transcritos da exportação do Zephyr, sem alterar as regras documentadas.

## RES-T1 — Abrir chamado com dados válidos

**Pré-condição:** Funcionário precisa estar autenticado no Resolva.

**Objetivo:** Verificar se um funcionário autenticado consegue abrir um chamado com informações válidas

**Cobertura no Jira:** RES-2

**Etapas de teste**

**Passo 1 — Acessar a funcionalidade "Novo Chamado".**

- Dados de teste: Não se aplica.
- Resultado esperado: O sistema deverá apresentar o formulário de criação e abertura de chamados, contendo os campos de título, descrição e categoria.

**Passo 2 — Preencher os campos obrigatórios do formulário de abertura de chamados.**

- Dados de teste: Tiítulo: Computador não liga; Descrição: O computador não liga ao pressionar o botão de energia; Categoria: Hardware.
- Resultado esperado: O sistema deverá aceitar os dados informados e manter o formulário preenchido, sem apresentar erros de validação.

**Passo 3 — Clicar no botão "Abrir chamado" para enviar o formulário preenchido e solicitar o registro do chamado.**

- Dados de teste: Utilizar os dados informados no Passo 2.
- Resultado esperado: O sistema deverá registrar o chamado com sucesso e apresentar uma confirmação de abertura.

**Passo 4 — Consultar os detalhes do chamado recém-criado.**

- Dados de teste: Chamado registrado no Passo 3.
- Resultado esperado: O chamado deverá apresentar um identificador gerado pelo sistema, diferente dos identificadores dos chamados já existentes, status ABERTO e prioridade NÃO DEFINIDA, mantendo título, descrição e categoria informados no formulário.

---

## RES-T2 — Impedir a criação de chamado sem título

**Pré-condição:** Funcionário autenticado no Resolva.

**Objetivo:** Verificar se o sistema impede a abertura de chamados sem título e informa que o campo é obrigatório.

**Cobertura no Jira:** RES-2

**Etapas de teste**

**Passo 1 — Acessar a funcionalidade "Novo chamado".**

- Dados de teste: Não se aplica.
- Resultado esperado: O sistema deverá apresentar o formulário de abertura de chamados, contendo os campos título, descrição e categoria.

**Passo 2 — Preencher os campos obrigatórios do formulário, deixando o título vazio.**

- Dados de teste: Título: vazio; Descrição: O computador não liga ao pressionar o botão de energia; Categoria: Hardware.
- Resultado esperado: O formulário deverá manter os dados informados, com o campo título vazio.

**Passo 3 — Clicar no botão "Abrir chamado" para tentar registrar o chamado sem título.**

- Dados de teste: Utilizar os dados informados no Passo 2.
- Resultado esperado: O sistema deverá impedir a abertura do chamado e informar que o título é obrigatório.

**Passo 4 — Consultar a listagem de chamados e verificar se a tentativa anterior gerou algum registro.**

- Dados de teste: Descrição e categoria utilizadas no Passo 2; relação de chamados existente antes da tentativa.
- Resultado esperado: Nenhum novo chamado deverá ter sido registrado em decorrência da tentativa de abertura sem título.

---

## RES-T3 — Impedir abertura de chamado sem descrição

**Pré-condição:** Funcionário autenticado no Resolva.

**Objetivo:** Verificar se o sistema impede a abertura de chamados sem descrição e informa que o campo é obrigatório.

**Cobertura no Jira:** RES-2

**Etapas de teste**

**Passo 1 — Acessar a funcionalidade "Novo Chamado".**

- Dados de teste: Não se aplica.
- Resultado esperado: O Sistema deverá apresentar o formulário de abertura de chamado, contendo os campos título, descrição e categoria

**Passo 2 — Preencher os campos obrigatórios do formulário, deixando a descrição vazia**

- Dados de teste: Título: Computador não liga; Descrição: Vazia; Categoria: Hardware.
- Resultado esperado: O formulário deverá manter os dados informados com o campo título vazio.

**Passo 3 — Clicar no botão "Abrir chamado" para tentar registrar o chamado sem descrição.**

- Dados de teste: Utilizar os dados informados no Passo 2.
- Resultado esperado: O sistema deverá impedir a abertura do chamado e informar que o descrição é obrigatório.

**Passo 4 — Consultar a listagem de chamados e verificar se a tentiva anterior gerou algum registro.**

- Dados de teste: Título e categoria utilizados no Passo 2; Relação de chamados existente antes da tentativa
- Resultado esperado: Nenhum novo chamado deverá ter sido registrado em decorrência da tentativa de abertura sem descrição.

---

## RES-T4 — Impedir abertura de chamado sem categoria

**Pré-condição:** Funcionário autenticado no Resolva.

**Objetivo:** Verificar se o sistema impede a abertura de chamados sem categoria e informa que o campo é obrigatório.

**Cobertura no Jira:** RES-2

**Etapas de teste**

**Passo 1 — Acessar a funcionalidade "Novo Chamado".**

- Dados de teste: Não se aplica.
- Resultado esperado: O sistema deverá apresentar o formulário de abertura de chamado, contendo os campos título, descrição e categoria.

**Passo 2 — Preencher os campos obrigatórios do formulário, deixando a categoria vazia.**

- Dados de teste: Título: Computador não liga Descrição: Ao pressionar o botão de ligar o computador não liga Categoria: Vazia
- Resultado esperado: O formulário deverá manter os dados informados com o campo categoria vazio.

**Passo 3 — Clicar no botão "Abrir chamado" para tentar registrar o chamado sem categoria.**

- Dados de teste: Utilizar os dados informados no Passo 2.
- Resultado esperado: O sistema deverá impedir a abertura do chamado e informar que a categoria é obrigatória.

**Passo 4 — Consultar a listagem de chamados e verificar se a tentativa anterior gerou algum registro.**

- Dados de teste: Título e descrição utilizadas no Passo 2; Relação de chamados existente antes da tentiva.
- Resultado esperado: Nenhum novo chamado deverá ter sido registrado em decorrência da tentiva de abertura sem categoria.

---

## RES-T5 — Impedir acesso à criação de chamados sem autenticação

**Pré-condição:** Usuário sem sessão autenticada no Resolva.

**Objetivo:** Verificar se uma pessoa não autenticada é impedida de acessar a tela de criação de chamados e redirecionada para o login.

**Cobertura no Jira:** RES-2

**Etapas de teste**

**Passo 1 — Tentar acessar diretamente a URL da página "Novo chamado" sem estar autenticado no Resolva.**

- Dados de teste: URL da página de criação de chamados; Navegador sem sessão autenticada.
- Resultado esperado: O sistema deverá impedir o acesso à página de criação de chamados, sem exibir o formulário.

**Passo 2 — Verificar o comportamento do sistema após a tentativa de acesso à página de criação de chamados sem autenticação.**

- Dados de teste: Não se aplica.
- Resultado esperado: O sistema deverá informar que a autenticação é obrigatória e redirecionar automaticamente o usuário para a tela de login.

---
