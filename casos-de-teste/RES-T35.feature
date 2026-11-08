Feature: Validar manutenção do valor da senha ao alternar visibilidade
    @TestCaseKey=RES-T35
    Scenario: Validar manutenção do valor da senha ao alternar visibilidade
        
        Given que estou na tela de login do Resolva
            And preencho o campo senha com "Teste123"
            And a senha está inicialmente oculta
            When alterno a visibilidade da senha quatro vezes
            Then o valor do campo senha deve permanecer "Teste123"
            And a senha deve permanecer oculta
            When substituo o conteúdo da senha por "Teste123@456"
            And alterno a visibilidade da senha três vezes
            Then o valor do campo senha deve permanecer "Teste123@456"
            And a senha deve estar visível
            And nenhum caractere deve ter sido perdido ou modificado