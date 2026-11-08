# Casos de teste de login — Step by Step

**Projeto:** Resolva  
**Origem:** Zephyr Essential (exportação XLS)  
**Cobertura no Jira:** RES-9  
**Responsável pela documentação pública:** Bernardo

> Estes casos foram documentados em formato Step by Step. O status **Approved** na exportação refere-se ao estado de aprovação do caso de teste, não ao resultado de sua execução. Os resultados das execuções estão nos relatórios do Zephyr.

## RES-T11 — Validar obrigatoriedade do campo e-mail no login

**Objetivo:** Verificar se o formulário de login apresenta uma mensagem de erro quando o usuário tenta enviar os dados sem preencher o campo e-mail, impedindo o processamento do formulário inválido.

| Etapa | Ação | Dados de teste | Resultado esperado |
|---|---|---|---|
| 1 | Acessar a tela de login do Resolva. | — | A página é carregada e o formulário está disponível. |
| 2 | Deixar o campo e-mail vazio. | — | O campo permanece sem conteúdo. |
| 3 | Preencher o campo senha com `Teste123`. | `Teste123` | O campo aceita o valor informado. |
| 4 | Clicar no botão Entrar. | — | A mensagem “O email é obrigatório!” é exibida abaixo do campo e-mail. |
| 5 | Verificar qual campo recebe o foco após a tentativa de envio. | — | O campo e-mail recebe o foco automaticamente. |
| 6 | Inspecionar o atributo `aria-invalid` do campo e-mail no DevTools. | — | O atributo apresenta o valor `true`. |
| 7 | Verificar a mensagem de erro do campo senha. | — | Nenhuma mensagem de obrigatoriedade é apresentada para a senha preenchida. |

## RES-T12 — Validar rejeição de e-mail com formato inválido no login

**Pré-condição:** Tela de login do Resolva aberta e formulário disponível.

**Objetivo:** Verificar se o formulário identifica e rejeita endereços de e-mail com formato inválido, exibindo uma mensagem de validação, direcionando o foco ao campo e-mail e sinalizando-o como inválido.

| Etapa | Ação | Dados de teste | Resultado esperado |
|---|---|---|---|
| 1 | Acessar a tela de login. | Aplicação Resolva | Formulário carregado corretamente. |
| 2 | Preencher o campo e-mail. | `testeemail.com` | Valor inserido no campo. |
| 3 | Preencher o campo senha. | `Teste123` | Senha preenchida. |
| 4 | Clicar em Entrar. | E-mail e senha informados | Mensagem “Digite um email valido!” exibida. |
| 5 | Verificar o foco. | E-mail inválido | Campo e-mail recebe o foco. |
| 6 | Verificar `aria-invalid`. | Campo e-mail | Atributo igual a `true`. |
| 7 | Verificar erro da senha. | `Teste123` | Nenhuma mensagem de erro na senha. |

**Nota de fidelidade:** O XLS de origem contém pequenas variações de grafia da mensagem de erro do RES-T12 entre objetivo, ação e resultado esperado. O texto da tabela acima mantém a redação do campo **Resultado esperado**. Os passos foram apenas limpos de quebras de linha extras, sem adicionar verificações novas.
