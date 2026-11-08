# Casos de teste — Responsividade da tela de login

Fonte: exportação do Zephyr Essential. Formato original: Step by Step.

Estes documentos descrevem os casos de teste; os resultados das execuções constam nos relatórios publicados separadamente.

## RES-T6 — Verificar responsividade da tela de login em desktop (1920 x 1080)

**Objetivo:** Verificar se a inferface de login do Resolva é exibida corretamente na resolução de 1920 x 1080 pixels, garantindo a legibilidade dos elementos, alinhamento do formulário de login, ausência de cortes, sobreposições ou rolagem horizontal desnecessária

**Pré-condição:** A aplicação do Resolva deve estar acessivel no navegador, com a página de login carregada. O navegador deve estar configurado com viewport de 1920 x 1080 com zoom de 100%

**Cobertura no Jira:** RES-4

| Etapa | Ação | Dados de teste | Resultado esperado |
|---:|---|---|---|
| 1 | Abrir a aplicação Resolva no navegador. | URL local da aplicação Resolva | A página de login é carregada e seus elementos principais são exibidos |
| 2 | Abrir o DevTools (F12), ativar o modo dispositivo (Ctrl + shift + m) e configurar o viewport para 1920 x 1080 pixels, com zoom de 100% | Viewport: 1920 x 1080 px; Zoom: 100% | A interface é exibida na resolução configurada. |
| 3 | Inspecionar a logo, o título e a descrição da tela de login. | Não se aplica | Os textos e a logo estão legíveis, alinhados e sem cortes ou sobreposições. |
| 4 | Inspecionar os campos de e-mail, senha e o botão Entrar. | Não se aplica | Todos os componentes estão visíveis, alinhados e acessíveis para interação. |
| 5 | Inspecionar o painel direito e sua ilustração decorativa. | Não se aplica | O título e a descrição estão legíveis, sem sobreposição da ilustração. |
| 6 | Verificar se existe rolagem horizontal na página. | Não se aplica | Não existe rolagem horizontal desnecessária. |
| 7 | Capturar uma imagem da tela completa na resolução configurada. | Captura de tela em 1920 x 1080 px. | A evidência registra o layout observado e permite verificar os critérios anteriores. |


## RES-T7 — Verificar responsividade da tela de login em notebook (1366 x 768)

**Objetivo:** Verificar se a interface de login do Resolva é exibida corretamente em um viewport de 1366 x 768 pixels, garantindo legibilidade, alinhamento dos componentes, acesso aos controles e ausência de cortes, sobreposições ou rolagem horizontal desnecessária.

**Pré-condição:** Não informado na exportação.

**Cobertura no Jira:** RES-4

| Etapa | Ação | Dados de teste | Resultado esperado |
|---:|---|---|---|
| 1 | Abrir a aplicação Resolva no Google Chrome. | URL real da aplicação. | A tela de login é carregada corretamente. |
| 2 | Abrir o DevTools, ativar o modo dispositivo e configurar o viewport. | Viewport 1366 x 768; zoom da página 100% | A página é exibida no viewport configurado. |
| 3 | Inspecionar a logo, o título e a descrição do login. | Não se aplica. | Elementos legíveis, alinhados e sem cortes ou sobreposições. |
| 4 | Inspecionar os campos de e-mail, senha e o botão Entrar. | Não se aplica. | Todos os controles permanecem visíveis e utilizáveis. |
| 5 | Inspecionar o painel direito e sua ilustração decorativa. | Não se aplica. | Textos legíveis, sem sobreposição da ilustração. |
| 6 | Verificar se existe transbordamento horizontal ou conteúdo inacessível verticalmente. | Viewport 1366 x 768 | Sem rolagem horizontal desnecessária; todo conteúdo essencial acessível, mesmo que exija rolagem vertical. |
| 7 | Capturar uma evidência da interface no viewport configurado | Captura de tela com configuração visível no DevTools. | Evidência produzida para documentar o resultado observado. |


## RES-T8 — Verificar responsividade da tela de login em tablet (768 x 1024)

**Objetivo:** Verificar se a interface de login do Resolva se adapta corretamente à resolução de 768 x 1024 pixels, garantindo a legibilidade dos elementos, o alinhamento dos componentes, a acessibilidade dos controles e a ausência de cortes, sobreposições ou rolagem horizontal desnecessária.

**Pré-condição:** Não informado na exportação.

**Cobertura no Jira:** RES-4

| Etapa | Ação | Dados de teste | Resultado esperado |
|---:|---|---|---|
| 1 | Abrir a aplicação Resolva. | URL local da aplicação | Tela de login carregada. |
| 2 | Configurar o viewport no DevTools. | Viewport 768 x 1024px; zoom 100% | Interface exibida na resolução configurada. |
| 3 | Inspecionar logo, título e descrição. | Não se aplica | Elementos legíveis, sem cortes ou sobreposições. |
| 4 | Inspecionar os campos de e-mail, senha e botão Entrar. | Não se aplica | Controles visíveis, alinhados e acessíveis. |
| 5 | Verificar a adaptação do painel roxo e da ilustração. | Não se aplica | Layout adaptado à largura disponível, sem ocultar conteúdo essencial. |
| 6 | Verificar transbordamento horizontal e acesso vertical ao conteúdo. | 768 × 1024 px | Sem transbordamento horizontal; conteúdo essencial acessível. |
| 7 | Capturar a evidência da tela. | Captura com viewport configurado | viewport configurado Evidência disponível para anexar à execução. |


## RES-T9 — Responsividade da tela de login em celular (390 × 844)

**Objetivo:** Verificar se a tela de login do Resolva se adapta corretamente à resolução de 390 × 844 pixels, garantindo a visualização completa do formulário sem rolagem vertical, a legibilidade dos elementos e a ausência de cortes, sobreposições e transbordamento horizontal.

**Pré-condição:** A aplicação Resolva deve estar acessível no Google Chrome, com a página de login carregada. O DevTools deve estar configurado com viewport de 390 × 844 pixels e zoom de 100%, sem teclado virtual aberto.

**Cobertura no Jira:** RES-4

| Etapa | Ação | Dados de teste | Resultado esperado |
|---:|---|---|---|
| 1 | Abrir a aplicação Resolva. | Não se aplica | A tela de login é carregada. |
| 2 | Configurar o viewport para 390 × 844 px, zoom 100%. | Viewport: 390 × 844 px; zoom: 100% | A interface se adapta à resolução. |
| 3 | Inspecionar a logo, o título e a descrição. | Não se aplica | Elementos legíveis, sem cortes ou sobreposições. |
| 4 | Inspecionar os campos de e-mail, senha e o botão Entrar. | Não se aplica | Controles visíveis, alinhados e utilizáveis. |
| 5 | Verificar a disposição dos elementos na tela. | Não se aplica | Formulário completo visível sem rolagem vertical, com teclado fechado. |
| 6 | Verificar se existe transbordamento horizontal. | Não se aplica | Não existe transbordamento horizontal. |
| 7 | Capturar uma imagem da tela na resolução configurada. | Viewport: 390 × 844 px; zoom: 100% | Evidência disponível para anexar à execução. |


## RES-T10 — Verificar responsividade da tela de login em celular pequeno (360 x 640)

**Objetivo:** Validar a adaptação da tela de login do Resolva à resolução de 360 × 640 pixels, garantindo legibilidade, ausência de sobreposições e transbordamento horizontal, além da acessibilidade de todos os controles, mesmo quando houver necessidade de rolagem vertical.

**Pré-condição:** Aplicação Resolva acessível no Google Chrome, com DevTools configurado para viewport de 360 × 640 pixels e zoom de 100%, sem teclado virtual aberto.

**Cobertura no Jira:** RES-4, RES-5

| Etapa | Ação | Dados de teste | Resultado esperado |
|---:|---|---|---|
| 1 | Abrir a tela de login. | Não se aplica | Página carregada corretamente. |
| 2 | Configurar viewport 360 × 640 px. | Viewport: 390 × 844 px; | Layout adaptado à resolução. |
| 3 | Verificar logo, título e descrição. | Não se aplica | Textos legíveis e sem sobreposições. |
| 4 | Inspecionar campos de e-mail, senha e botão Entrar. | Não se aplica | Controles visíveis e utilizáveis. |
| 5 | Rolar a página verticalmente, se necessário. | Não se aplica | Todos os controles permanecem acessíveis. |
| 6 | Verificar transbordamento horizontal. | Não se aplica | Não existe rolagem horizontal. |
| 7 | Capturar evidência da interface. | Viewport: 390 × 844 px; | Captura disponível para anexar à execução. |

