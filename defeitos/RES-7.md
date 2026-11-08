# RES-7 — Mensagem de erro do e-mail permanece após correção

**Tipo:** Defeito funcional  
**Funcionalidade:** Login — Validação de formulário  
**Caso de teste associado:** RES-T32  
**Situação:** Corrigido e validado por reteste manual

## 1. Descrição do defeito

O formulário de login do Resolva mantinha a mensagem de erro do campo E-mail mesmo após o usuário corrigir o endereço informado.

Esse comportamento fazia com que o formulário continuasse apresentando um estado de validação inválido, apesar de o conteúdo do campo ter sido corrigido.

## 2. Pré-condições

- Aplicação Resolva aberta no navegador.
- Tela de login disponível.

## 3. Passos para reprodução

1. Acessar a tela de login do Resolva.
2. Informar um endereço de e-mail inválido.
3. Acionar a validação do formulário para apresentar a mensagem de erro.
4. Corrigir o endereço para `usuario@exemplo.com`.
5. Observar o comportamento da validação sem realizar um novo envio do formulário.

## 4. Resultado esperado

Após a correção do endereço de e-mail:

- A mensagem de erro deve desaparecer.
- O campo E-mail deve deixar de apresentar o estado inválido.
- O atributo `aria-invalid` deve assumir o valor `"false"`.
- A atualização deve ocorrer sem exigir um novo clique em Entrar.

## 5. Resultado obtido antes da correção

A mensagem de erro permanecia visível mesmo depois que o usuário corrigia o endereço de e-mail.

O comportamento não correspondia ao resultado esperado para a atualização da validação do campo.

## 6. Histórico de execução

| Execução | Resultado | Observação |
|---|---|---|
| RES-E16 | Falha | Comportamento incorreto identificado |
| RES-E17 | Sucesso | Reteste aprovado após correção |

**Caso de teste:** [RES-T32.feature](../casos-de-teste/RES-T32.feature)

## 7. Correção e reteste

Após a correção, o caso RES-T32 foi executado novamente.

O cenário de reteste verificou a atualização da validação após a substituição de um e-mail inválido por `usuario@exemplo.com`, sem novo envio do formulário.

**Resultado registrado:** Sucesso — RES-E17.

O histórico do Zephyr preserva a execução com falha anterior, RES-E16, permitindo acompanhar a evolução do defeito.

## 8. Conclusão

O defeito RES-7 foi identificado durante os testes de validação do login, corrigido e aprovado em reteste manual.

O histórico de execuções demonstra o ciclo de identificação, correção e validação do defeito.

## 9. Limitação do escopo

A aplicação Resolva ainda não possui autenticação real integrada a um backend.

O defeito está relacionado ao comportamento visual e funcional da validação do campo E-mail, não à autenticação de usuários.
