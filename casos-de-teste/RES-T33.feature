Feature: Validar remoção da mensagem de erro após preenchimento da senha
    @TestCaseKey=RES-T33
    Scenario: Validar remoção da mensagem de erro após preenchimento da senha
        
        Given que estou na tela de login do Resolva
            And preencho o campo e-mail com "usuario@exemplo.com"
            And mantenho o campo senha vazio
            When clico no botão "Entrar"
            Then devo visualizar uma mensagem de obrigatoriedade da senha
            And o campo senha deve possuir "aria-invalid" igual a "true"
            When preencho o campo senha com "Teste123"
            Then a mensagem de obrigatoriedade da senha deve desaparecer
            And o campo senha deve possuir "aria-invalid" igual a "false"
            And o valor do campo senha deve permanecer preenchido