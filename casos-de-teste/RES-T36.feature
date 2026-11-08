Feature: Validar comportamento do formulário com campos válidos
    @TestCaseKey=RES-T36
    Scenario: Validar comportamento do formulário com campos válidos
        
        Given que estou na tela de login do Resolva
            And preencho o campo e-mail com "usuario@exemplo.com"
            And preencho o campo senha com "Teste123"
            When clico no botão "Entrar"
            Then o formulário não deve apresentar erros de validação
            And o campo e-mail deve possuir "aria-invalid" igual a "false"
            And o campo senha deve possuir "aria-invalid" igual a "false"
            And os dados informados devem ser aceitos pela validação do formulário